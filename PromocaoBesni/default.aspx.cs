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
    public partial class _default : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsSorteio;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            ProximoSorteio();
        }

        public void ProximoSorteio()
        {
            rsSorteio = objBD.ExecutaSQL("SELECT top 1 CAST(DAY(CONVERT(date,CON_DATA,103)) AS VARCHAR(2)) as dia,  CAST(Month(CONVERT(date,CON_DATA,103)) AS VARCHAR(2)) AS mes from concurso where CONVERT(date,CON_DATA,103) > CONVERT(date,getDate(),103)");

            if (rsSorteio == null)
            {
                throw new Exception();
            }

            if (rsSorteio.HasRows)
            {
                rsSorteio.Read();

                proximoSorteio.InnerHtml = "fique ligado! <br>o próximo sorteio é no dia <br>" + rsSorteio["dia"] + " de " + objUtils.MesExtenso(Convert.ToInt16(rsSorteio["mes"]))+ " <br>";
            }

            rsSorteio.Close();
            rsSorteio.Dispose();
        }
    }
}