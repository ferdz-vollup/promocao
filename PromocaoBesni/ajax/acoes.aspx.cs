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
        private OleDbDataReader rsCadastro, rsSexo;
        string retorno = "";
        Thread Atualizador;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            string acao = Request["acao"];

            switch (acao)
            {
                case "novoCadastro":
                    GerarNovoUsuario(Request["nome"].ToString(), Request["cpf"].ToString(), Request["rg"].ToString(), Request["dtnascimento"].ToString(), Request["sexo"].ToString(), Request["email"].ToString());
                    break;
                case "totalSexo":
                    totalSexo();
                    break;
                case "addInstagram":
                    // Atualizador = new Thread(() => InfoInsta(Request["url"],Request["url"], Request["url"], Request["url"], Request["url"], Request["url"]));
                    //  Atualizador.Start();
                    InfoInsta(Request["url"], Request["id"], Request["imagem"], Request["thumb"], Request["likes"], Request["tags"]);
                    break;
                default:
                    break;
            }

            //PegarResultado();
        }

        public void GerarNovoUsuario(string nome, string cpf, string rg, string dtnascimento, string sexo, string email)
        {

           //Response.Write("EXEC piuCadastro null, '" + nome + "','" + cpf + "','" + rg + "','" + dtnascimento + "','" + sexo + "','" + email + "'");
           //Response.End();

            rsCadastro = objBD.ExecutaSQL("EXEC piuCadastro 0, '" + nome + "','"+ cpf + "','"+rg+"','"+ dtnascimento + "','"+ sexo + "','"+email+"'");
            if (rsCadastro == null)
            {
                throw new Exception();
            }
            if (rsCadastro.HasRows)
            {
                rsCadastro.Read();
                //Salvando as Session do usuário
                //Session["petNome"] = rsCadastro["PET_NOME"].ToString();
                //Session["petID"] = rsCadastro["PET_ID"].ToString();
                //Session["petUsuario"] = rsCadastro["PET_USUARIO"].ToString();

                //Salvando Cookie para se manter logado
                //myCookie.Value = rsCadastro["PET_ID"].ToString();
                //myCookie.Expires = DateTime.Now.AddHours(168); //1 semana
                //Response.Cookies.Add(myCookie);

                //Salvando no log
                //Utils.Banco().RunSQL("EXEC psLog '" + rsCadastro["PET_ID"] + "',null,'Parabéns! Você ganhou a medalha INICIANTE por se cadastrar e efetuar o login no site.','1'");

                //Redirecionando para a home do usuário
                Response.Redirect("/completar-cadastro/");
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

            //Response.Write("exec piInstagram '" + url + "','" + id + "','" + imagem + "','" + thumb + "','" + likes + "','" + tags + "'");
            //Response.End();
             
            objBD.ExecutaSQL("exec piInstagram '"+ url + "','" + id + "','" + imagem + "','" + thumb + "','" + likes + "','NULL'");
        }
    }
}