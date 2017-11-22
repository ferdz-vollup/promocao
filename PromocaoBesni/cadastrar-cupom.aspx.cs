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

        public string NumeroAleatorio()
        {
            Random rdn = new Random();
            int strNumeroaleatorio;
            strNumeroaleatorio = 91827;
            strNumeroaleatorio = rdn.Next(00000, 99999);

            return strNumeroaleatorio.ToString();
        }

        protected void pub_Click(object sender, EventArgs e)
        {
            string arquivo = "NULL", nome = "", filename = "", extensao = "", valor = "" , cnpj = "" , data= "", coo = "", imagem = "";
            valor = Request["valor_nota_02"];
            cnpj = Request["cnpj"];
            data = Request["date"]; ;
            coo = Request["coo"];

            int total = 0;
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

                    imagem = filename + extensao;

                    //cria a pasta se a mesma nao existir
                    if (Directory.Exists(Server.MapPath("~/upload/cupons/usuarios/")) == false)
                    {
                        Directory.CreateDirectory(Server.MapPath("~/upload/cupons/usuarios/"));
                    }

                    //Caminho a onde será salvo
                    hpf.SaveAs(Server.MapPath("~/upload/cupons/usuarios/") + filename + extensao);

                    var prefixo = Session["cadID"] + "_";

                    //SE FOR CLIENTE BESNI TOTAL DEVE SER VEZES 2
                    //GERAR O CUPOM ESPEICIAL

                    valor = valor.Remove(valor.Length - 3).Replace(".", "");
                    total = Convert.ToInt32(valor) / 200;
                    //string especial = "";

                    //Verificar se é Cliente Besni
                    if (Session["Besni"].ToString().Length > 15)
                    {
                        total = total * 2;
                    }

                    for (int aux = 1; aux <= total; aux++)
                    {
                        GerarCupom(cnpj, data, coo, valor, "", imagem);
                    }

                    for (int aux = 1; aux <= total; aux++)
                    {
                        GerarCupom(cnpj, data, coo, valor, "E", imagem);
                    }
                    Response.Redirect("/novo-cupom.aspx?total=" + total);
                    Response.End();
                }
            }
        }

        public void GerarCupom(string cnpj, string data, string coo, string valor, string especial, string imagem)
        {
            rsSerie = objBD.ExecutaSQL("set dateformat dmy; select top 1 SER_INICIO,  SER_FINAL from serie where SER_DH_INICIO > getDate() and   getDate() < SER_DH_FINAL");

            if (rsSerie == null)
            {
                throw new Exception();
            }
            if (rsSerie.HasRows)
            {
                rsSerie.Read();

                //Gerando a série
                Random rdn = new Random();
                int strNumeroaleatorio;
                strNumeroaleatorio = 05424;
                strNumeroaleatorio = rdn.Next(Convert.ToInt16(rsSerie["SER_INICIO"]), Convert.ToInt16(rsSerie["SER_FINAL"]));
                serie = strNumeroaleatorio.ToString();

                numero = NumeroAleatorio();
            }

                //Salvar no BD
                cupom = serie + "-" + numero;

                if (especial == "E")
                {
                    cupom = "E-" + cupom;
                }

                objBD.ExecutaSQL("EXEC pGerarCupom '" + Session["cadID"].ToString() + "','" + cupom + "','" + cnpj + "','" + data + "','" + coo + "','" + valor + "','" + serie + "', '" + imagem + "'");
                
        }
    }
}