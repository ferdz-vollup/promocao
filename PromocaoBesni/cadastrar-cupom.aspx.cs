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

namespace PromocaoBesni
{
    public partial class cadastrar_cupom : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsSerie;
        string serie = "", numero="", cupom ="";

        protected void Page_Load(object sender, EventArgs e)
        {
            //  usuario.InnerHtml += Session["cadNome"].ToString();
            objUtils = new utils();
            objBD = new bd();

            GerarCupom();
        }

        public void GerarCupom()
        {
            rsSerie = objBD.ExecutaSQL("set dateformat dmy; select top 1 SER_INICIO,  SER_FINAL from serie where CONVERT(VARCHAR(8), SER_DH_INICIO, 5) > CONVERT(VARCHAR(8), getDate(), 5) and   cONVERT(VARCHAR(8), getDate(), 5) < CONVERT(VARCHAR(8), SER_DH_FINAL, 5)");

            if (rsSerie == null)
            {
                throw new Exception();
            }
            if (rsSerie.HasRows)
            {
                rsSerie.Read();
                serie = rsSerie["SER_INICIO"].ToString();
                numero = NumeroAleatorio().PadLeft(5, '0');
            }

            //Verificar se numero já foi cadastrado
            if (1==1)
            {
                rsSerie.Dispose();
                rsSerie.Close();
                GerarCupom();
            }
            cupom = serie + "-" + numero;
            Response.Write("Cupom: " + cupom);
            Response.End();
        }

        public string NumeroAleatorio()
        {
            Random rdn = new Random();
            int strNumeroaleatorio;
            strNumeroaleatorio = rdn.Next(00000, 99999);

            return strNumeroaleatorio.ToString();
        }

    }
}