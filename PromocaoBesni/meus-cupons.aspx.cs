using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Etnia.classe;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace PromocaoBesni
{
    public partial class meus_cupons : System.Web.UI.Page
    {

        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsCupons;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                objUtils = new utils();
                string acao = Request["acao"];

               
                trazerCupons();
            }
            else
            {
                //DESLOGADO
                Response.Redirect("/");
            }
        }

        public void trazerCupons()
        {

            //Response.Write("select CUP_NUMERO_SORTE from cupom where CAD_ID = " + Session["cadID"].ToString() + " ");
            //Response.End();

            rsCupons = objBD.ExecutaSQL("select CUP_NUMERO_SORTE, CONVERT(VARCHAR(10),CUP_DH_CADASTRO,103) AS CUP_DH_CADASTRO from cupom where CAD_ID = " + Session["cadID"].ToString() + " order by CUP_NUMERO_SORTE desc ");

            if (rsCupons == null)
            {
                throw new Exception();
            }
            if (rsCupons.HasRows)
            {
                string palavra = "E";

                while (rsCupons.Read())
                {

                    if (rsCupons["CUP_NUMERO_SORTE"].ToString().Contains(palavra))
                    {
                        secCupons.InnerHtml += " <div class=\"cupon\" style=\"background:#97092a;\">";
                        secCupons.InnerHtml += "    <h4 class=\"basenine\">NÚMERO DA SORTE ESPECIAL <br/> " + rsCupons["CUP_NUMERO_SORTE"] + "</h4>";
                    }
                    else
                    {
                        secCupons.InnerHtml += " <div class=\"cupon\" style=\"background:#c8962b;\">";
                        secCupons.InnerHtml += "    <h4 class=\"basenine\">NÚMERO DA SORTE <br/>" + rsCupons["CUP_NUMERO_SORTE"] + "</h4>";
                    }
                    secCupons.InnerHtml += "<p style=\"text-align:center; color: #fff;\">Gerado em: " + rsCupons["CUP_DH_CADASTRO"] + "</p>";
                        secCupons.InnerHtml += " </div> ";
                }
            }
        }
    }
}