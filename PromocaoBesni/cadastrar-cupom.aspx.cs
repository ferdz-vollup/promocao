using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Etnia.classe;
using System.Data.OleDb;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
using InnerLibs;
using System.Data.SqlClient;

namespace PromocaoBesni
{
    public partial class cadastrar_cupom : System.Web.UI.Page
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
        protected void pub_Click(object sender, EventArgs e)
        {
            string arquivo = "NULL", nome = "", filename = "", extensao = "";
            HttpFileCollection hfc = Request.Files;
            for (int i = 0; i < hfc.Count; i++)
            {
                HttpPostedFile hpf = hfc[i];
                if (hpf.ContentLength > 0)
                {
                    //Pega o nome do arquivo
                    nome = System.IO.Path.GetFileName(hpf.FileName);

                    //Pega a extensão do arquivo
                    extensao = Path.GetExtension(hpf.FileName);

                    //Gera nome novo do Arquivo numericamente
                    filename = DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");

                    //cria a pasta se a mesma nao existir
                    if (Directory.Exists(Server.MapPath("~/upload/cupons/usuarios/")) == false)
                    {
                        Directory.CreateDirectory(Server.MapPath("~/upload/cupons/usuarios/"));
                    }

                    //Caminho a onde será salvo
                    hpf.SaveAs(Server.MapPath("~/upload/cupons/usuarios/") + filename + extensao);

                    var prefixo = Session["cadID"] + "_";

                    Response.Write(nome);
                    Response.End();
                }
            }
        }
    }
}