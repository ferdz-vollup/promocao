using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Etnia.classe;
using System.Text;

namespace PromocaoBesni
{
    public partial class cadastro : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                objUtils = new utils();
                PopularCadastro();
            }
        }

        private void PopularCadastro()
        {
            nome.Attributes.Add("value", "Fernando TESTE");
        }
    }
}