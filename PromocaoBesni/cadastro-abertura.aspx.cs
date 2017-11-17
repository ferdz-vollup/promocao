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
    public partial class cadastro_abertura : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsSerie;
        string serie = "", numero = "", cupom = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                objUtils = new utils();
                string acao = Request["acao"];
            }
            else
            {
                //DESLOGADO
                Response.Redirect("/login.aspx");
            }

            usuario.InnerHtml += Session["cadNome"].ToString();
            objUtils = new utils();
            objBD = new bd();
        }
    }
}