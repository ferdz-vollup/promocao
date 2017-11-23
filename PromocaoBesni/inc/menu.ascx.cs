using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PromocaoBesni.inc
{
    public partial class menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string urlCompleta = Request.Url.AbsoluteUri;
            string paginaAtual = Request.CurrentExecutionFilePath;
            paginaAtual = paginaAtual.Remove(0, paginaAtual.LastIndexOf("/") + 1);

            switch (paginaAtual)
            {
                case "onde-estamos.aspx":
                    onde.Attributes["class"] = "ativo";
                    break;

                case "fale-conosco.aspx":
                    fale.Attributes["class"] = "ativo";
                    break;

                case "faq.aspx":
                    faq.Attributes["class"] = "ativo";
                    break;

                case "regulamento.aspx":
                    regula.Attributes["class"] = "ativo";
                    break;

                case "ganhadores.aspx":
                    ganha.Attributes["class"] = "ativo";
                    break;

                case "premios.aspx":
                    premio.Attributes["class"] = "ativo";
                    break;

                case "login.aspx":
                case "cadastro-abertura.aspx":
                case "cadastrar-cupom.aspx":
                case "cadastro.aspx":
                case "meus-cupons.aspx":

                    log.Attributes["class"] = "ativo";
                    break;

                case "como-participar.aspx":
                    como.Attributes["class"] = "ativo";
                    break;

            }
        }
    }
}