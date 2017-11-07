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
            rsCupons = objBD.ExecutaSQL("select CUP_NUMERO_SORTE from cupom where CAD_ID = " + Session["cadID"].ToString() + " ");

            if (rsCupons == null)
            {
                throw new Exception();
            }
            if (rsCupons.HasRows)
            {
                int count = 1;

                while (rsCupons.Read())
                {

                    if (count % 2 == 0)
                    {
                        secCupons.InnerHtml += " <div class=\"cupon\" style=\"background:#c8962b;\">";
                    }
                    else
                    {
                        secCupons.InnerHtml += " <div class=\"cupon\" style=\"background:#97092a;\">";
                    }
                    secCupons.InnerHtml += "    <h4 class=\"basenine\">cód. "+rsCupons["CUP_NUMERO_SORTE"] +"</h4>";
                    secCupons.InnerHtml += " </div> ";
                    count++;
                }
            }
        }
    }
}