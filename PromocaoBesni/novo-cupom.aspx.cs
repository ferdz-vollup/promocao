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
    public partial class novo_cupom : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsCupons;
        string email = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                objUtils = new utils();
                string acao = Request["acao"];


                trazerCupons(Convert.ToInt16(Request["total"]));
            }
            else
            {
                //DESLOGADO
                Response.Redirect("/");
            }
        }

        public void trazerCupons(int total)
        {

            //Response.Write("select CUP_NUMERO_SORTE from cupom where CAD_ID = " + Session["cadID"].ToString() + " ");
            //Response.End();

            rsCupons = objBD.ExecutaSQL("EXEC psCupomPorCadId " + Session["cadID"].ToString() + ", "+(total * 2) +" ");

            if (rsCupons == null)
            {
                throw new Exception();
            }
            if (rsCupons.HasRows)
            {
                string conteudo = "<h1 style=\"margin:0 auto 50px auto; font-size:24px;font-family:'arial'; letter-spacing: 1.8; font-weight: 800; text-align:center; color:#a8272d; text-transform:uppercase;\">NOVOS CUPONS</h1>";

                while (rsCupons.Read())
                {
                    divRetorno.InnerHtml += "<div class=\"cupon\" style=\"background: transparent; \">"; 
                    divRetorno.InnerHtml += " <h4 class=\"basenine cinza\" style=\"color:#231f20\"> ";
                    divRetorno.InnerHtml += "    "+ rsCupons["CUP_NUMERO_SORTE"] + " ";
                    divRetorno.InnerHtml += " </h4> ";
                    divRetorno.InnerHtml += "</div>";
                }
                rsCupons.Dispose();
                rsCupons.Close();

                //Enviar e-mail
                rsCupons = objBD.ExecutaSQL("EXEC psCupomPorCadId " + Session["cadID"].ToString() + ", " + (total * 2) + " ");

                if (rsCupons == null)
                {
                    throw new Exception();
                }
                if (rsCupons.HasRows)
                {
                    while (rsCupons.Read())
                    {
                        conteudo += "<center><p style=\"font-weight:700; font-size: 16px;\">" + rsCupons["CUP_NUMERO_SORTE"] + "</p></center>";
                        email = rsCupons["CAD_EMAIL"].ToString();
                    }
                    objUtils.EnviaEmail(email, "Novos Cupons", conteudo, "", "", null, "queroser@misasi.com.br", null);
                }
               
                rsCupons.Dispose();
                rsCupons.Close();
            }
        }
    }
}





                        