using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using Etnia.classe;
using System.IO;
using InnerLibs;
using System.Drawing.Imaging;
using System.Data.OleDb;
using System.Threading;
using System.Text;

namespace PromocaoBesni.ajax
{
    public partial class acoes : System.Web.UI.Page
    {

        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsCadastro, rsSexo, rsLogin, rsSerie, rs, rsCadastros;
        string retorno = "", serie = "", numero = "", cupom = "", CAD_ID = "0", sql = "where cad_id in (select cad_id from cupom)";
        int total = 0;
        //  Thread Atualizador;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            string acao = Request["acao"];

            switch (acao)
            {
                case "novoCadastro":
                    GerarNovoUsuario(Request["nome"].ToString(), Request["cpf"].ToString(), Request["rg"].ToString(), Request["dtnascimento"].ToString(), Request["sexo"].ToString(), Request["telefone"].ToString(), Request["celular"].ToString(), Request["email"].ToString(), Request["cartao1"].ToString(), Request["cartao2"].ToString(), Request["cartao3"].ToString(), Request["cartao4"].ToString(), Request["cep"].ToString(), Request["logradouro"].ToString(), Request["numero"].ToString(), Request["complemento"].ToString(), Request["bairro"].ToString(), Request["cidade"].ToString(), Request["uf"].ToString(), Request["senha"], Request["termos"], Request["novidades"], Request["CAD_FACEBOK_ID"], Request["CAD_FACEBOK_IMAGEM"]);
                    break;
                case "FazerLogin":
                    FazerLogin(Request["cpf"].ToString().Replace(".", "").Replace("-", ""), objUtils.getMD5Hash(Request["senha"].ToString()));
                    break;
                case "loginAdministrador":
                    loginAdministrador(Request["email"].ToString(), Request["password"].ToString());
                    break;
                case "logout":
                    logout();
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
                case "GerarCupom":
                    // GerarCupom(Request["cnpj"], Request["data"], Request["cco"], Request["valor"]);
                    Teste(Request["cnpj"], Request["data"], Request["cco"], Request["valor"]);
                    break;
                case "esqueciSenha":
                    EsqueciSenha(Request["cpf"]);
                    break;
                case "mudarSenha":
                    MudarSenha(Request["senha"], Request["cpf"]);
                    break;
                case "validarCPF":
                    validarCPF(Request["cpf"].ToString().Replace(".", "").Replace("-", ""));
                    break;
                /* ADMIN*/
                case "filtrarUsuario":
                    filtrarUsuario(Request["id"]);
                    break;
                case "donwloadGanhadores":
                    donwloadGanhadores();
                    break;
                default:
                    break;
            }

            //PegarResultado();
        }

        public void Teste(string cnpj, string data, string cco, string valor)
        {
            //SE FOR CLIENTE BESNI TOTAL DEVE SER VEZES 2
            //GERAR O CUPOM ESPEICIAL



            valor = valor.Remove(valor.Length - 2).Replace(".", "");
            total = Convert.ToInt32(valor) / 200;
            //string especial = "";

            //Verificar se é Cliente Besni
            if (Session["Besni"].ToString().Length > 15)
            {
                Response.Write(Session["Besni"].ToString().Length);
                Response.End();
                total = total * 2;
            }

            for (int i = 1; i <= total; i++)
            {
                GerarCupom(cnpj, data, cco, valor, "");
            }

            for (int i = 1; i <= total; i++)
            {
                GerarCupom(cnpj, data, cco, valor, "E");
            }

            Response.Write("ok|" + total);// MANDAR OK|TOTAL E PEGAR O TOTLA PARA SABER QUANTOS REGISTRO MOSTRAR NO NOVO-CUPOM
            Response.End();
        }

        public void FazerLogin(string cpf, string senha)
        {
            //Verificar se o usuário existe (comparando usuário e senha)
            rsLogin = objBD.ExecutaSQL("EXEC psUsuarioPorCpfeSenha '" + cpf + "','" + senha + "'");

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
                Session["Besni"] = rsLogin["CAD_CARTAO_BESNI"].ToString();


                //Salvando no log
                //Utils.Banco().RunSQL("EXEC psLog '" + rsLogin["PET_ID"] + "',null,'Login efetuado no Portal','0'");


                Response.Redirect("/cadastro-abertura.aspx");
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

        public void loginAdministrador(string email, string senha)
        {
            //Verificar se o usuário existe (comparando usuário e senha)
            rsLogin = objBD.ExecutaSQL("select ADM_ID from administradores where ADM_EMAIL = '" + email + "' AND ADM_SENHA = '" + senha + "' AND ADM_ATIVO = 1");

            if (rsLogin == null)
            {
                throw new Exception();
            }
            if (rsLogin.HasRows)
            {
                rsLogin.Read();

                //Salvando as Session do usuário
                Session["ADM_ID"] = rsLogin["ADM_ID"].ToString();
                //Session["cadID"] = rsLogin["CAD_ID"].ToString();
                //Session["Besni"] = rsLogin["CAD_CARTAO_BESNI"].ToString();

                Response.Redirect("/admin/index.aspx");
                Response.End();

                Response.End();
            }
            else
            {
                Response.Redirect("/admin/login.aspx?msg=erroLogin");
            }

            rsLogin.Dispose();
            rsLogin.Close();
        }

        public void logout()
        {
            if (Session["cadID"] != null)
            {
                //Salvando no log
                //  objBD.ExecutaSQL("EXEC psLog '" + Session["petID"].ToString() + "',null,'Você se deslogou do Portal','0'");

                Session.Abandon();
                Response.Redirect("/");
            }
            else
            {
                //DESLOGADO
                Response.Redirect("/");
            }
        }

        public void mudarStatusFoto(string status, string id)
        {
            objBD.ExecutaSQL("exec puInstagram '" + status + "','" + id + "'");
        }

        public void GerarNovoUsuario(string nome, string cpf, string rg, string dtnascimento, string sexo, string telefone, string celular, string email, string cartao1, string cartao2, string cartao3, string cartao4, string cep, string logradouro, string numero, string complemento, string bairro, string cidade, string uf, string senha, string termos, string novidades, string CAD_FACEBOK_ID, string CAD_FACEBOK_IMAGEM)
        {
            //Ajustes nos campos
            cpf = cpf.Replace(".", "").Replace("-", "");
            rg = rg.Replace(".", "").Replace("-", "");
            string cartaoBesni = cartao1 + cartao2 + cartao3 + cartao4;

            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                CAD_ID = Session["cadID"].ToString();
            }
            else
            {
                CAD_ID = "0";
            }

            if (cartaoBesni != "")
            {
                cartaoBesni = "'" + cartaoBesni + "'";
            }
            else
            {
                cartaoBesni = "NULL";
            }

            if (CAD_FACEBOK_ID != "")
            {
                CAD_FACEBOK_ID = "'" + CAD_FACEBOK_ID + "'";
            }
            else
            {
                CAD_FACEBOK_ID = "NULL";
            }

            if (CAD_FACEBOK_IMAGEM != "")
            {
                CAD_FACEBOK_IMAGEM = "'" + CAD_FACEBOK_IMAGEM + "'";
            }
            else
            {
                CAD_FACEBOK_IMAGEM = "NULL";
            }

            //Response.Write("EXEC piuCadastro " + CAD_ID + ", '" + nome + "','" + cpf + "','" + rg + "','" + dtnascimento + "','" + sexo + "','" + telefone + "','" + celular + "','" + email + "'," + cartaoBesni + ",'" + cep + "','" + logradouro + "','" + numero + "','" + complemento + "','" + bairro + "','" + cidade + "','" + uf + "','" + objUtils.getMD5Hash(senha) + "','" + termos + "','" + novidades + "'," + CAD_FACEBOK_ID + "," + CAD_FACEBOK_IMAGEM + " ");
            //Response.End();

            rsCadastro = objBD.ExecutaSQL("EXEC piuCadastro " + CAD_ID + ", '" + nome + "','" + cpf + "','" + rg + "','" + dtnascimento + "','" + sexo + "','" + telefone + "','" + celular + "','" + email + "'," + cartaoBesni + ",'" + cep + "','" + logradouro + "','" + numero + "','" + complemento + "','" + bairro + "','" + cidade + "','" + uf + "','" + objUtils.getMD5Hash(senha) + "','" + termos + "','" + novidades + "'," + CAD_FACEBOK_ID + "," + CAD_FACEBOK_IMAGEM + " ");
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
                Session["Besni"] = rsCadastro["CAD_CARTAO_BESNI"].ToString();

                //Salvando no log
                //Utils.Banco().RunSQL("EXEC psLog '" + rsCadastro["PET_ID"] + "',null,'Parabéns! Você ganhou a medalha INICIANTE por se cadastrar e efetuar o login no site.','1'");

                //Enviar e-mail
                string conteudo = "<h1 style=\"margin:0 auto 50px auto; font-size:24px;font-family:'arial'; letter-spacing: 1.8; font-weight: 800; text-align:center; color:#a8272d; text-transform:uppercase;\">USUÁRIO CADASTRADO</h1>";
                conteudo += "<center><p style=\"font-weight:700; font-size: 16px;\">Olá, " + nome + "!</p></center>";
                conteudo += "<center><p style=\"font-weight:700; font-size: 16px;\">Seu cadastro foi realizado com sucesso.</p></center>";
                objUtils.EnviaEmail(email, "Usuário Cadastrado | Promoção Besni", conteudo, "", "", null, "contatopromo@lojasbesni.com.br", null);

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
            objBD.ExecutaSQL("exec piInstagram '" + url + "','" + id + "','" + imagem + "','" + thumb + "','" + likes + "','NULL'");
        }

        public void GerarCupom(string cnpj, string data, string cco, string valor, string especial)
        {
            byte[] foto = null;
            HttpPostedFile arquivo = Request.Files[0];
            if (arquivo.ContentLength > 0)
            {
                foto = arquivo.ToImage().Resize(450, 300, true).ToBytes(ImageFormat.Jpeg);
                Response.Write(foto);
                Response.End();
            }

            Response.End();
            rsSerie = objBD.ExecutaSQL("set dateformat dmy; select top 1 SER_INICIO,  SER_FINAL from serie where CONVERT(VARCHAR(8), SER_DH_INICIO, 5) > CONVERT(VARCHAR(8), getDate(), 5) and   cONVERT(VARCHAR(8), getDate(), 5) < CONVERT(VARCHAR(8), SER_DH_FINAL, 5)");

            if (rsSerie == null)
            {
                throw new Exception();
            }
            if (rsSerie.HasRows)
            {
                rsSerie.Read();
                serie = rsSerie["SER_INICIO"].ToString();
                numero = NumeroAleatorio().PadLeft(5, '0');
            }

            //Verificar se numero já foi cadastrado
            if (1 == 2)
            {
                rsSerie.Dispose();
                rsSerie.Close();
                // GerarCupom();
            }
            else
            {
                //Salvar no BD
                cupom = serie + "-" + numero;

                if (especial == "E")
                {
                    cupom = "E-" + cupom;
                }

               // objBD.ExecutaSQL("EXEC pGerarCupom '" + Session["cadID"].ToString() + "','" + cupom + "','" + cnpj + "','" + data + "','" + cco + "','" + valor + "','" + serie + "'");
                 Response.Write("insert into cupom values('" + Session["cadID"].ToString() + "','" + cupom + "','"+ cnpj + "','"+data+"','"+cco+"','"+valor+"',getDate(),'"+ serie + "')");
                 Response.End();

            }

        }

        public string NumeroAleatorio()
        {
            Random rdn = new Random();
            int strNumeroaleatorio;
            strNumeroaleatorio = rdn.Next(00000, 99999);

            return strNumeroaleatorio.ToString();
        }

        public void EsqueciSenha(string cpf)
        {
            rsLogin = objBD.ExecutaSQL("select TOP 1 CAD_EMAIL from cadastro where CAD_CPF = '" + cpf.ToString().Replace(".", "").Replace("-", "") + "'");
            if (rsLogin == null)
            {
                throw new Exception();
            }
            if (rsLogin.HasRows)
            {
                rsLogin.Read();

                string conteudo = "<h1 style=\"margin:0 auto 50px auto; font-size:24px;font-family:'arial'; letter-spacing: 1.8; font-weight: 800; text-align:center; color:#a8272d; text-transform:uppercase;\">ESQUECI A SENHA</h1>";
                conteudo += "<a href=\"http://www.promocaobesni.provisorio.ws/mudar-senha.aspx?CPF=" + cpf.ToString().Replace(".", "").Replace("-", "") + "  \" style=\"text-decoration:none; color:#000; padding:20px 50px; text-align:center; letter-spacing:1.5; border:1px solid black; text-transform:uppercase; font-size: 13px; font-family:'arial'; font-weight:800;\" title='Clique e tente de novo'>Clique aqui para gerar uma nova senha</a>";

                objUtils.EnviaEmail(rsLogin["CAD_EMAIL"].ToString(), "Esqueci a Senha | Promoção Besni", conteudo, "", "", null, "contatopromo@lojasbesni.com.br", null);

                Response.Redirect("/login.aspx?erro=0");
                Response.End();
            }
            else
            {
                Response.Redirect("/login.aspx?erro=1");
                Response.End();
            }
            rsLogin.Dispose();
            rsLogin.Close();
        }

        public void MudarSenha(string senha, string cpf)
        {
            rsLogin = objBD.ExecutaSQL("EXEC puSenhaPorCPF '" + objUtils.getMD5Hash(senha) + "','" + cpf + "'");
            if (rsLogin == null)
            {
                throw new Exception();
            }
            if (rsLogin.HasRows)
            {
                rsLogin.Read();

                string conteudo = "<h1 style=\"margin:0 auto 50px auto; font-size:24px;font-family:'arial'; letter-spacing: 1.8; font-weight: 800; text-align:center; color:#a8272d; text-transform:uppercase;\">SENHA ALTERADA</h1>";
                conteudo += "<p><center>Olá, " + rsLogin["CAD_NOME"].ToString() + "!</center></p>";
                conteudo += "<p><center>A sua senha foi alterada com sucesso!</center></p>";

                objUtils.EnviaEmail(rsLogin["CAD_EMAIL"].ToString(), "Senha Alterada  | Promoção Besni", conteudo, "", "", null, "contatopromo@lojasbesni.com.br", null);

                Response.Redirect("/mudar-senha.aspx?retorno=sucesso");
                Response.End();
            }
            rsLogin.Dispose();
            rsLogin.Close();
        }

        public void validarCPF(string cpf)
        {

            rs = objBD.ExecutaSQL("select C_CPF from cpfs_bloqueados where C_CPF = '" + cpf + "' ");
            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                rs.Read();
                Response.Write("bloqueado");
                Response.End();
            }
            else
            {
                rs = objBD.ExecutaSQL("select count(*) as total from cadastro where cad_cpf = '" + cpf + "' ");
                if (rs == null)
                {
                    throw new Exception();
                }
                if (rs.HasRows)
                {
                    rs.Read();
                    Response.Write(rs["total"]);
                    Response.End();
                }
                rs.Dispose();
                rs.Close();
            }
            rs.Dispose();
            rs.Close();
        }

        /*admin*/
        public void filtrarUsuario(string id)
        {
            try
            {
                string query = "select * from cadastro ";

                if (id == "0")
                {
                    sql = " where cad_id not in (select cad_id from cupom) ";
                }
                if(id == "null")
                {
                    sql = "";
                }
                query = query + sql;

                rsCadastros = objBD.ExecutaSQL(query);

                if (rsCadastros == null)
                {
                    throw new Exception();
                }
                if (rsCadastros.HasRows)
                {
                    while (rsCadastros.Read())
                    {
                        retorno += "<tr>";
                        retorno += "  <td>" + rsCadastros["CAD_ID"] + "</td>";
                        retorno += "  <td>" + rsCadastros["CAD_NOME"] + "</td>";
                        retorno += "  <td>" + rsCadastros["CAD_SEXO"] + "</td>";
                        retorno += "  <td>" + rsCadastros["CAD_EMAIL"] + "</td>";
                        retorno += "  <td><a href='javascript:void(0)' onClick='verUser(" + rsCadastros["CAD_ID"] + ")' data-toggle='modal' data-target='#dadosUsuario'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a></td>";
                        retorno += "</tr>";
                    }

                    Response.Write(retorno);
                    Response.End();
                }
                rsCadastros.Dispose();
                rsCadastros.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void donwloadGanhadores()
        {
            {
                Response.Clear();
                Response.AddHeader("content-disposition", string.Format("attachment;filename=Ganhadores.xls", "xyz"));

                Response.ContentType = "application/ms-excel";
                Response.ContentEncoding = System.Text.Encoding.Default;

                StringBuilder sb = new StringBuilder();

                sb.Append("<style type=\"text/css\">\r\n");
                sb.Append(".tabHead\r\n");
                sb.Append("{\r\n");
                sb.Append("   background-color: #cccccc;\r\n");
                sb.Append("   border: solid 1px black;\r\n");
                sb.Append("}\r\n");
                sb.Append(".tabRow\r\n");
                sb.Append("{\r\n");
                sb.Append("   border: solid 1px black;\r\n");
                sb.Append("}\r\n");
                sb.Append("</style>\r\n\r\n");

                //SORTEIO E NÚMEROS
                //Header
                sb.AppendFormat("<table>\r\n");
                sb.AppendFormat("<thead>\r\n");
                sb.AppendFormat("<tr>\r\n");
                sb.AppendFormat("\t<td colspan='2' class=\"tabHead\">Extração da Loteria Federal</td>\r\n");

                sb.AppendFormat("<tr>\r\n");
                sb.AppendFormat("\t<td>&nbsp;</td>\r\n");
                sb.AppendFormat("\t<td>&nbsp;</td>\r\n");
                sb.AppendFormat("\t<td>&nbsp;</td>\r\n");
                sb.AppendFormat("\t<td>&nbsp;</td>\r\n");
                sb.AppendFormat("\t<td>&nbsp;</td>\r\n");
                sb.AppendFormat("\t<td>&nbsp;</td>\r\n");
                sb.AppendFormat("\t<td ><img src=\"http://www.promocaobesni.com.br/assets/imagens/logo-rodape.png\" style=\"width:140px; margin-left:35px;\"></td>\r\n");
                sb.AppendFormat("</tr>\r\n");
                sb.AppendFormat("</tr>\r\n");
                sb.AppendFormat("</thead>\r\n");
                sb.AppendFormat("<tbody>\r\n");

                rs = objBD.ExecutaSQL("EXEC psConcursoPremiacao");
                if (rs == null)
                {
                    throw new Exception();
                }

                if (rs.HasRows)
                {
                    rs.Read();
                    //Row
                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td colspan='2'>Concurso: "+rs["CON_NUMERO"] + " (" + rs["CON_DATA"] + ")</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td colspan='2'>&nbsp;</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");
                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabHead\">Prêmio</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabHead\">Bilhete</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">1º</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BILHETE_1"] + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">2º</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BILHETE_2"] + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">3º</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BILHETE_3"] + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">4º</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BILHETE_4"] + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">5º</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BILHETE_5"] + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td colspan='8'>&nbsp;</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td colspan='2' class=\"tabHead\">Sorteio Periódico</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">Série</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BESNI"].ToString().Substring(0, 3) + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                    sb.AppendFormat("<tr>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">Número</td>\r\n");
                    sb.AppendFormat("\t<td class=\"tabRow\">" + rs["PRE_BESNI"].ToString().Substring(4,5) + "</td>\r\n");
                    sb.AppendFormat("</tr>\r\n");

                }
                
                //Footer
                sb.AppendFormat("</tbody>\r\n");
                sb.AppendFormat("</table>\r\n");

                //QUEBRA DE TABLELA
                //Row
                sb.AppendFormat("<tr>\r\n");
                sb.AppendFormat("\t<td colspan='8'>&nbsp;</td>\r\n");
                sb.AppendFormat("</tr>\r\n");

                //GANHADORES
                //Header
                sb.AppendFormat("<table>\r\n");
                sb.AppendFormat("<thead>\r\n");
                sb.AppendFormat("<tr>\r\n");
                sb.AppendFormat("\t<td colspan='8' class=\"tabHead\"></td>\r\n");
                sb.AppendFormat("</tr>\r\n");
                sb.AppendFormat("</thead>\r\n");
                sb.AppendFormat("<tbody>\r\n");

                //Row
                sb.AppendFormat("<tr>\r\n");
                sb.AppendFormat("\t<td class=\"tabRow\">Número da Sorte</td>\r\n");
                sb.AppendFormat("\t<td class=\"tabRow\">CNPJ da Loja</td>\r\n");

                sb.AppendFormat("\t<td class=\"tabRow\">&nbsp;</td>\r\n");

                sb.AppendFormat("\t<td class=\"tabRow\">Nome</td>\r\n");
                sb.AppendFormat("\t<td class=\"tabRow\">CPF</td>\r\n");
                sb.AppendFormat("\t<td class=\"tabRow\">Celular</td>\r\n");
                sb.AppendFormat("\t<td class=\"tabRow\">E-mail</td>\r\n");
                sb.AppendFormat("\t<td class=\"tabRow\">Imagem do Cupom</td>\r\n");
                sb.AppendFormat("</tr>\r\n");

                //TIRAR PARAMETRO FIXO
                rs = objBD.ExecutaSQL("EXEC Ganhadoresv1 '10867649'");

                if (rs == null)
                {
                    throw new Exception();
                }

                if (rs.HasRows)
                {
                    while(rs.Read())
                    {
                        sb.AppendFormat("<tr>\r\n");
                        sb.AppendFormat("\t<td >"+rs["CUP_NUMERO_SORTE"] +"</td>\r\n");
                        sb.AppendFormat("\t<td >" + rs["CUP_CNPJ"] + "</td>\r\n");
                        sb.AppendFormat("\t<td >&nbsp</td>\r\n");
                        sb.AppendFormat("\t<td style=\"width: 300px;\">" + rs["CAD_NOME"] +" </td>\r\n");
                        sb.AppendFormat("\t<td >" + rs["CAD_CPF"] + "</td>\r\n");
                        sb.AppendFormat("\t<td >" + rs["CAD_CELULAR"] + "</td>\r\n");
                        sb.AppendFormat("\t<td >" + rs["CAD_EMAIL"] + "</td>\r\n");
                        sb.AppendFormat("\t<td ><a href='http://promocaobesni.com.br/upload/cupons/usuarios/" + rs["CUP_IMAGEM"] + "'>" + rs["CUP_IMAGEM"] + "</a></td>\r\n");
                        sb.AppendFormat("</tr>\r\n");
                    }
                }
                
                //Footer
                sb.AppendFormat("</tbody>\r\n");
                sb.AppendFormat("</table>\r\n");

                //FIM GANHADORES

                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(sb.ToString());
                Response.End();

                // return null;
            }
        }
    }
}