using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PromocaoBesni
{
    public partial class cadastrar_cupom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario.InnerHtml += Session["cadNome"].ToString();
        }
    }
}