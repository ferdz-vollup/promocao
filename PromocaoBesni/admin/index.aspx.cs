using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using Etnia.classe;
using System.Data.OleDb;
using InnerLibs;

namespace PromocaoBesni.admin
{
    public partial class index : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsConcurso, rsResultado, rsContagem, rsPremiacao, rsData;
        string numeroSorte = "", numeroSerie= "";

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            PegarResultado();
            Contagem();
        }

        public void PegarResultado()
        {
<<<<<<< .mine
            //Verifica há concurso para ser capturado, baseado na data atual
            rsData = objBD.ExecutaSQL("set dateformat dmy; select top 1 CON_NUMERO from concurso where CON_CIDADE = '' AND CON_DATA<GETdATE()");
||||||| .r312
            Besni_Caixa.Caixa response = AJAX.GET<Besni_Caixa.Caixa>("http://confiraloterias.com.br/api0/json.php?loteria=federal&token=0oTe7mbgFQcO71l&concurso=05235");
=======
           //VERIFICAR NO BD O NÚMERO DO CONCURSO COM A COLUNA VAZIA E SE A DATA DELE É MAIOR DO QUE HOJE

            Besni_Caixa.Caixa response = AJAX.GET<Besni_Caixa.Caixa>("http://confiraloterias.com.br/api0/json.php?loteria=federal&token=0oTe7mbgFQcO71l&concurso=05235");
>>>>>>> .r321

            if (rsData == null)
            {
                throw new Exception();
            }
            if (rsData.HasRows)
            {
                rsData.Read();

                //Response.Write("http://confiraloterias.com.br/api0/json.php?loteria=federal&token=fwjSAAWIwhyYh3V&concurso=" + rsData["CON_NUMERO"] + "");
                //Response.End();

                Besni_Caixa.Caixa response = AJAX.GET<Besni_Caixa.Caixa>("http://confiraloterias.com.br/api0/json.php?loteria=federal&token=fwjSAAWIwhyYh3V&concurso=" + rsData["CON_NUMERO"] + "");

                try
                {
                    DateTime dataSorteio = Convert.ToDateTime(response.concurso.data);
                    String diaSemana = dataSorteio.DayOfWeek.ToString();

                    //Verificar se sorteio é de Sábado (Saturday)
                    if (diaSemana == "Saturday" || 1 == 1)
                    {
                        //Gerando a série
                        numeroSerie = numeroSerie += response.concurso.premiacao.premio_1.bilhete[3];
                        numeroSerie = numeroSerie += response.concurso.premiacao.premio_2.bilhete[3];
                        numeroSerie = numeroSerie += response.concurso.premiacao.premio_3.bilhete[3];

                        //Gerando número da sorte Besni
                        numeroSorte = numeroSorte += response.concurso.premiacao.premio_1.bilhete[4];
                        numeroSorte = numeroSorte += response.concurso.premiacao.premio_2.bilhete[4];
                        numeroSorte = numeroSorte += response.concurso.premiacao.premio_3.bilhete[4];
                        numeroSorte = numeroSorte += response.concurso.premiacao.premio_4.bilhete[4];
                        numeroSorte = numeroSorte += response.concurso.premiacao.premio_5.bilhete[4];

                        numeroSorte = numeroSerie + "-" + numeroSorte;

                        //Response.Write("Exec piuConcurso '" + response.concurso.numero + "', '" + response.concurso.data + "', '" + response.concurso.cidade + "',  '" + response.concurso.local + "',NULL,'" + response.concurso.premiacao.premio_1.bilhete + "', '" + response.concurso.premiacao.premio_2.bilhete + "', '" + response.concurso.premiacao.premio_3.bilhete + "', '" + response.concurso.premiacao.premio_4.bilhete + "', '" + response.concurso.premiacao.premio_5.bilhete + "', '" + numeroSorte + "'");
                        //Response.End();

                        //Salva os dados do Concurso
                        rsConcurso = objBD.ExecutaSQL("Exec piuConcurso '" + response.concurso.numero + "', '" + response.concurso.data + "', '" + response.concurso.cidade + "',  '" + response.concurso.local + "',NULL,'" + response.concurso.premiacao.premio_1.bilhete + "', '" + response.concurso.premiacao.premio_2.bilhete + "', '" + response.concurso.premiacao.premio_3.bilhete + "', '" + response.concurso.premiacao.premio_4.bilhete + "', '" + response.concurso.premiacao.premio_5.bilhete + "', '" + numeroSorte + "'");

                        if (rsConcurso == null)
                        {
                            throw new Exception();
                        }
                        if (rsConcurso.HasRows)
                        {
                            rsConcurso.Read();

                            //Response.Write("Exec piPremiacao '" + rsConcurso["CON_ID"] + "','" + response.concurso.premiacao.premio_1.bilhete + "', '" + response.concurso.premiacao.premio_2.bilhete + "', '" + response.concurso.premiacao.premio_3.bilhete + "', '" + response.concurso.premiacao.premio_4.bilhete + "', '" + response.concurso.premiacao.premio_5.bilhete + "', '" + numeroSorte + "'");
                            //Response.End();


                            //Salva a premiacao
                            rsPremiacao = objBD.ExecutaSQL("Exec piPremiacao '" + rsConcurso["CON_ID"] + "','" + response.concurso.premiacao.premio_1.bilhete + "', '" + response.concurso.premiacao.premio_2.bilhete + "', '" + response.concurso.premiacao.premio_3.bilhete + "', '" + response.concurso.premiacao.premio_4.bilhete + "', '" + response.concurso.premiacao.premio_5.bilhete + "', '" + numeroSorte + "'");

                            //DISPARAR E-MAIL PARA AS AGÊNCIAS

                        }
                        rsConcurso.Close();
                        rsConcurso.Dispose();
                    }

                    ExbirResultado();

                }
                catch (Exception)
                {

                    throw;
                }

            }
            rsData.Close();
            rsData.Dispose();
        }

        public void ExbirResultado()
        {
            //MUDAR POR PROCEDURE
            rsResultado = objBD.ExecutaSQL("EXEC psConcursoPremiacao");
            if (rsResultado == null)
            {
                throw new Exception();
            }

            if (rsResultado.HasRows)
            {
                rsResultado.Read();

                linha1.InnerHtml = "Concuros: " + rsResultado["CON_NUMERO"] + " | " + rsResultado["CON_DATA"] + " ";
                premio1.InnerHtml = "<em>" + rsResultado["PRE_BILHETE_1"] + "</em>";
                premio2.InnerHtml = "<em>" + rsResultado["PRE_BILHETE_2"] + "</em>";
                premio3.InnerHtml = "<em>" + rsResultado["PRE_BILHETE_3"] + "</em>";
                premio4.InnerHtml = "<em>" + rsResultado["PRE_BILHETE_4"] + "</em>";
                premio5.InnerHtml = "<em>" + rsResultado["PRE_BILHETE_5"] + "</em>";
                premioBesni.InnerHtml = "<strong><em>" + rsResultado["PRE_BESNI"] + "</em></strong>";
            }
            rsResultado.Close();
            rsResultado.Dispose();
        }

        public void Contagem()
        {
            rsContagem = objBD.ExecutaSQL("EXEC pContagem");
            if (rsContagem == null)
            {
                throw new Exception();
            }

            if (rsContagem.HasRows)
            {
                rsContagem.Read();
                contagemCadastros.InnerHtml = ""+ rsContagem["total_usuarios"];
                contagemInstagram.InnerHtml = "" + rsContagem["total_instagram"];
                contagemCupons.InnerHtml = "" + rsContagem["total_cupons"];
            }
            rsContagem.Close();
            rsContagem.Dispose();
        }
    }
}
