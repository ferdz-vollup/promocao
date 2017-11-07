using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using Etnia.classe;
using InnerLibs;
using System.Data.OleDb;
using System.Threading;

namespace PromocaoBesni.ajax
{
    public partial class acoes : System.Web.UI.Page
    {

        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsCadastro, rsSexo, rsLogin;
        string retorno = "";
      //  Thread Atualizador;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            string acao = Request["acao"];

            switch (acao)
            {
                case "novoCadastro":
                    GerarNovoUsuario(Request["nome"].ToString(), Request["cpf"].ToString(), Request["rg"].ToString(), Request["dtnascimento"].ToString(), Request["sexo"].ToString(), Request["telefone"].ToString(), Request["celular"].ToString(), Request["email"].ToString(),Request["cartao1"].ToString(), Request["cartao2"].ToString(), Request["cartao3"].ToString(), Request["cartao4"].ToString(), Request["cep"].ToString(), Request["logradouro"].ToString(), Request["numero"].ToString(), Request["complemento"].ToString(), Request["bairro"].ToString(), Request["cidade"].ToString(), Request["uf"].ToString(), Request["senha"], Request["termos"], Request["novidades"]);
                    break;
                case "FazerLogin":
                    FazerLogin(Request["cpf"].ToString().Replace(".", "").Replace("-", ""), objUtils.getMD5Hash(Request["senha"].ToString()));
                    break;
                case "totalSexo":
                    totalSexo();
                    break;
                case "addInstagram":
                    // Atualizador = new Thread(() => InfoInsta(Request["url"],Request["url"], Request["url"], Request["url"], Request["url"], Request["url"]));
                    //  Atualizador.Start();
                    InfoInsta(Request["url"], Request["id"], Request["imagem"], Request["thumb"], Request["likes"], Request["tags"]);
                    break;
                case "mudaStatusFoto":
                    mudarStatusFoto(Request["status"], Request["id"]);
                    break;
                default:
                    break;
            }

            //PegarResultado();
        }

        public void FazerLogin(string cpf, string senha)
        {
            //Verificar se o usuário existe (comparando usuário e senha)
            rsLogin = objBD.ExecutaSQL("EXEC psUsuarioPorCpfeSenha '"+ cpf + "','"+senha+"'");

            if (rsLogin == null)
            {
                throw new Exception();
            }
            if (rsLogin.HasRows)
            {
                rsLogin.Read();

                //Salvando as Session do usuário
                Session["cadNome"] = rsLogin["CAD_NOME"].ToString();
                Session["cadID"] = rsLogin["CAD_ID"].ToString();

                //Salvando no log
                //Utils.Banco().RunSQL("EXEC psLog '" + rsLogin["PET_ID"] + "',null,'Login efetuado no Portal','0'");
                

                Response.Redirect("/cadastrar-cupom.aspx");
                Response.End();

                Response.End();
            }
            else
            {
                Response.Redirect("/login.aspx?msg=erroLogin");
            }

            rsLogin.Dispose();
            rsLogin.Close();
        }

        public void mudarStatusFoto(string status, string id)
        {
            objBD.ExecutaSQL("exec puInstagram '" + status + "','" + id + "'");
        }

        public void GerarNovoUsuario(string nome, string cpf, string rg, string dtnascimento, string sexo, string telefone, string celular, string email, string cartao1, string cartao2, string cartao3, string cartao4, string cep, string logradouro, string numero, string complemento, string bairro, string cidade, string uf, string senha, string termos, string novidades)
        {
            //Ajustes nos campos
            cpf = cpf.Replace(".", "").Replace("-", "");
            rg = rg.Replace(".","").Replace("-", "");
            string cartaoBesni = cartao1 + cartao2 + cartao3 + cartao4;

            rsCadastro = objBD.ExecutaSQL("EXEC piuCadastro 0, '" + nome + "','" + cpf + "','" + rg + "','" + dtnascimento + "','" + sexo + "','" + telefone + "','" + celular + "','" + email + "','" + cartaoBesni + "','" + cep + "','" + logradouro + "','" + numero + "','" + complemento + "','" + bairro + "','" + cidade + "','" + uf + "','" + objUtils.getMD5Hash(senha) + "','" + termos + "','" + novidades + "'");
            if (rsCadastro == null)
            {
                throw new Exception();
            }
            if (rsCadastro.HasRows)
            {
                rsCadastro.Read();
                //Salvando as Session do usuário
                Session["cadNome"] = nome;
                Session["cadID"] = rsCadastro["CAD_ID"].ToString();
                //Session["petUsuario"] = rsCadastro["PET_USUARIO"].ToString();

                //Salvando Cookie para se manter logado
                //myCookie.Value = rsCadastro["PET_ID"].ToString();
                //myCookie.Expires = DateTime.Now.AddHours(168); //1 semana
                //Response.Cookies.Add(myCookie);

                //Salvando no log
                //Utils.Banco().RunSQL("EXEC psLog '" + rsCadastro["PET_ID"] + "',null,'Parabéns! Você ganhou a medalha INICIANTE por se cadastrar e efetuar o login no site.','1'");

                //Redirecionando para a home do usuário
                Response.Redirect("/cadastrar-cupom.aspx");
                Response.End();
            }
            else
            {
                Response.Redirect("/cadastro.aspx?msg=erroCadastro");
            }

            rsCadastro.Dispose();
            rsCadastro.Close();
        }

        public void totalSexo()
        {
            rsSexo = objBD.ExecutaSQL("select count(*) AS M, (select count(*) AS F From cadastro where CAD_SEXO = 'F') as F from cadastro where CAD_SEXO = 'M'");
            if (rsSexo == null)
            {
                throw new Exception();
            }
            if (rsSexo.HasRows)
            {
                rsSexo.Read();
                retorno = " " + rsSexo["M"] + "| " + rsSexo["F"] + "";
                Response.Write(retorno);
                Response.End();
            }
            rsSexo.Dispose();
            rsSexo.Close();
           
        }

        public void InfoInsta(string url, string id, string imagem, string thumb, string likes, string tags)
        {             
            objBD.ExecutaSQL("exec piInstagram '"+ url + "','" + id + "','" + imagem + "','" + thumb + "','" + likes + "','NULL'");
        }

    }
}