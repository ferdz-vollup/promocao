using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Collections;
using System.Configuration;
using ASPSnippets.FaceBookAPI;

namespace PromocaoBesni
{
    public partial class login : System.Web.UI.Page
    {

        protected void Login(object sender, EventArgs e)
        {
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                string acao = Request["acao"];
                Response.Redirect("/cadastro-abertura.aspx");
            }
            else
            {
                FaceBookConnect.API_Key = "2150445908529813";
                FaceBookConnect.API_Secret = "1ad0cdd6d503528cf707afe88a82744d";

                if (!IsPostBack)
                {
                    if (Request.QueryString["error"] == "access_denied")
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Erro ao tentar se logar com o Facebook.')", true);
                        return;
                    }
                    string code = Request.QueryString["code"];

                    if (!string.IsNullOrEmpty(code))
                    {
                        string data = FaceBookConnect.Fetch(code, "me?fields=id,name,email,gender,locale");
                        FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);

                        faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture?type=large", faceBookUser.Id);

                        //Salvar em uma session
                        Session["cadNome"] = faceBookUser.Name;
                        Session["faceId"] = faceBookUser.Id;
                        Session["PictureUrl"] = faceBookUser.PictureUrl;
                        Session["Email"] = faceBookUser.Email;
                        Session["Gender"] = faceBookUser.Gender;

                        Response.Redirect("/cadastro.aspx");
                        Response.End();
                    }
                }
            }
        }

        public class FaceBookUser
        {
            public string Id { get; set; }
            public string Name { get; set; }
            public string UserName { get; set; }
            public string PictureUrl { get; set; }
            public string Email { get; set; }
            public string Gender { get; set; }
            public string Locale { get; set; }
        }
    }
}