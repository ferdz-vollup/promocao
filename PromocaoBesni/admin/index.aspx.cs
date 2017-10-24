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
        private OleDbDataReader rsConcurso, rsResultado;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            PegarResultado();
        }

        public void PegarResultado()
        {
            Besni_Caixa.Caixa response = AJAX.GET<Besni_Caixa.Caixa>("http://confiraloterias.com.br/api0/json.php?loteria=federal&token=G9kUg07Fqc73gxo");

            try
            {
                DateTime dataSorteio = Convert.ToDateTime(response.concurso.data);
                String diaSemana = dataSorteio.DayOfWeek.ToString();

                //Verificar se sorteio é de Sábado (Saturday)
                if (diaSemana == "Saturday")
                {
                    rsConcurso = objBD.ExecutaSQL("Exec piConcurso '" + response.concurso.numero + "', '" + response.concurso.data + "', '" + response.concurso.cidade + "',  '" + response.concurso.local + "'");

                    //Response.Write("Exec piConcurso '" + response.concurso.numero + "', '" + response.concurso.data + "', '" + response.concurso.cidade + "',  '" + response.concurso.local + "'");

                    /*Response.Write(dataSorteio.DayOfWeek + "<br/><br/>");
                    Response.Write("Concurso: " + response.concurso.numero + "<br/><br/>");

                    Response.Write("1º Prêmio: " + response.concurso.premiacao.premio_1.bilhete + "<br/>");
                    Response.Write("2º Prêmio: " + response.concurso.premiacao.premio_2.bilhete + "<br/>");
                    Response.Write("3º Prêmio: " + response.concurso.premiacao.premio_3.bilhete + "<br/>");
                    Response.Write("4º Prêmio: " + response.concurso.premiacao.premio_4.bilhete + "<br/>");
                    Response.Write("5º Prêmio: " + response.concurso.premiacao.premio_5.bilhete + "<br/><br/><br/><br/>");

                    string numeroSorte = response.concurso.premiacao.premio_1.bilhete[4].ToString();
                    numeroSorte = numeroSorte += response.concurso.premiacao.premio_2.bilhete[4];
                    numeroSorte = numeroSorte += response.concurso.premiacao.premio_3.bilhete[4];
                    numeroSorte = numeroSorte += response.concurso.premiacao.premio_4.bilhete[4];
                    numeroSorte = numeroSorte += response.concurso.premiacao.premio_5.bilhete[4];

                    Response.Write("Número da Sorte: " + numeroSorte);*/
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
            rsResultado = objBD.ExecutaSQL("select * from concurso");
            if (rsResultado == null)
            {
                throw new Exception();
            }

            if (rsResultado.HasRows)
            {
                rsResultado.Read();

                linha1.InnerHtml = "Concuros: "+rsResultado["CON_NUMERO"]+ " | " + rsResultado["CON_DATA"] + " ";
            }
            rsResultado.Close();
            rsResultado.Dispose();
        }

    }
}