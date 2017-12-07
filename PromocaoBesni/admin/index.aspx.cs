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
        private OleDbDataReader rsConcurso, rsResultado, rsContagem, rsPremiacao;
        string numeroSorte = "", numeroSerie = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

           // PegarResultado();
            Contagem();
            ExbirResultado();
        }

        public void PegarResultado()
        {
            //VERIFICAR NO BD O NÚMERO DO CONCURSO COM A COLUNA VAZIA E SE A DATA DELE É MAIOR DO QUE HOJE

            Besni_Caixa.Caixa response = AJAX.GET<Besni_Caixa.Caixa>("http://confiraloterias.com.br/api0/json.php?loteria=federal&token=fwjSAAWIwhyYh3V&concurso=05237");

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

                    //Salva os dados do Concurso
                    rsConcurso = objBD.ExecutaSQL("Exec piuConcurso '" + response.concurso.numero + "', '" + response.concurso.data + "', '" + response.concurso.cidade + "',  '" + response.concurso.local + "',NULL,'" + response.concurso.premiacao.premio_1.bilhete + "', '" + response.concurso.premiacao.premio_2.bilhete + "', '" + response.concurso.premiacao.premio_3.bilhete + "', '" + response.concurso.premiacao.premio_4.bilhete + "', '" + response.concurso.premiacao.premio_5.bilhete + "', '" + numeroSorte + "'");

                    if (rsConcurso == null)
                    {
                        throw new Exception();
                    }
                    if (rsConcurso.HasRows)
                    {
                        rsConcurso.Read();


                        if (Convert.ToInt16(rsConcurso["CON_ID"]) > 0)
                        {
                            //Salva a premiacao
                            rsPremiacao = objBD.ExecutaSQL("Exec piPremiacao 0,'" + rsConcurso["CON_ID"] + "','" + response.concurso.premiacao.premio_1.bilhete + "', '" + response.concurso.premiacao.premio_2.bilhete + "', '" + response.concurso.premiacao.premio_3.bilhete + "', '" + response.concurso.premiacao.premio_4.bilhete + "', '" + response.concurso.premiacao.premio_5.bilhete + "', '" + numeroSorte + "'");

                            //DISPARAR E-MAIL PARA AS AGÊNCIAS
                        }

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

                linha1.InnerHtml = "Concursos: " + rsResultado["CON_NUMERO"] + " | " + rsResultado["CON_DATA"] + " ";
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
                contagemCadastros.InnerHtml = "" + rsContagem["total_usuarios"];
                contagemInstagram.InnerHtml = "" + rsContagem["total_instagram"];
                contagemCupons.InnerHtml = "" + rsContagem["total_cupons"];
            }
            rsContagem.Close();
            rsContagem.Dispose();
        }
    }
}
