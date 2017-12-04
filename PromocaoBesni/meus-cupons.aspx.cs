using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Etnia.classe;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Globalization;

namespace PromocaoBesni
{
    public partial class meus_cupons : System.Web.UI.Page
    {

        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsCupons, rs;
        int aux= 0;
        string especial = "", fundo = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                objUtils = new utils();
                string acao = Request["acao"];
                usuario.InnerHtml += Session["cadNome"].ToString();

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
            rsCupons = objBD.ExecutaSQL("select C.CUP_DATA, C.CUP_VALOR, C.CUP_NUMERO_SORTE from cupom C where C.cad_id = " + Session["cadID"].ToString() + " AND C.CUP_NUMERO_SORTE NOT LIKE '%E-%'");

            if (rsCupons == null)
            {
                throw new Exception();
            }
            if (rsCupons.HasRows)
            {
                secCupons.InnerHtml += "<div class=\"table-responsive\">";
                secCupons.InnerHtml += "    <table class=\"table table-condensed text-center\">";
                secCupons.InnerHtml += "        <thead style=\"background:#97092a;color:#fff\">";
                secCupons.InnerHtml += "            <tr class=\"text-uppercase basenine\">";
                secCupons.InnerHtml += "                <th style=\"vertical-align:middle; text-align:center\">data</th>";
                secCupons.InnerHtml += "                <th style=\"vertical-align:middle; text-align:center\">valor</th>";
                secCupons.InnerHtml += "                <th style=\"vertical-align:middle; text-align:center\">número da<br>sorte</th>";
                secCupons.InnerHtml += "                <th style=\"vertical-align:middle; text-align:center\">número da<br>sorte especial</th>";
                secCupons.InnerHtml += "            </tr>";
                secCupons.InnerHtml += "        </thead>";
                secCupons.InnerHtml += "        <tbody>";
               
                while (rsCupons.Read())
                {
                    if (aux == 0)
                    {
                        //CRIAR ARAY PARA NUMEROS ESPECIAIS
                        rs = objBD.ExecutaSQL("select CUP_NUMERO_SORTE from cupom C where C.cad_id = " + Session["cadID"].ToString() + " AND C.CUP_NUMERO_SORTE LIKE '%E-%'");
                        if (rs == null)
                        {
                            throw new Exception();
                        }
                        if (rs.HasRows)
                        {
                            while (rs.Read())
                            {
                                especial += rs["CUP_NUMERO_SORTE"].ToString() + "|";
                            }
                        }
                        rs.Dispose();
                        rs.Close();
                    }
                    
                    string[] words = especial.Split('|');

                    if (aux % 2 == 0)
                    {
                        fundo = "style=\"background-color:#e9e9e9;\"";
                    }
                    
                    secCupons.InnerHtml += "        <tr "+fundo+">";
                    secCupons.InnerHtml += "            <td>" + rsCupons["CUP_DATA"].ToString() + "</td>";
                    secCupons.InnerHtml += "            <td>" + string.Format(CultureInfo.GetCultureInfo("pt-BR"), "R$  {0:0.0,0}", rsCupons["CUP_VALOR"]) + "</td>";
                    secCupons.InnerHtml += "            <td>" + rsCupons["CUP_NUMERO_SORTE"].ToString() + "</td>";
                    secCupons.InnerHtml += "            <td>"+ words[aux] + "</td>";
                    secCupons.InnerHtml += "        </tr>";
                    fundo = "";
                    aux++;
                }
                
                secCupons.InnerHtml += "        </tbody>";
                secCupons.InnerHtml += "    </table>";
                secCupons.InnerHtml += "</div>";
            }
            rsCupons.Dispose();
            rsCupons.Close();
        }
    }
}