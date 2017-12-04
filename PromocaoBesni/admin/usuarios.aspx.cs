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

namespace PromocaoBesni.admin
{
    public partial class usuarios : System.Web.UI.Page
    {
        private bd objBD;
        private utils objUtils;
        private OleDbDataReader rsCadastros, rsUser, rsTotal;
        string resposta = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            carregaUsuarios();

            string acao = Request["acao"];

            switch (acao)
            {
                case "verUser":
                    verUser(Request["id"]);
                    break;
                default:
                    break;
            }
        }

        public void verUser(string id)
        {
            try
            {
                rsUser = objBD.ExecutaSQL("EXEC psCadastroID " + id);

                if (rsUser == null)
                {
                    throw new Exception();
                }
                if (rsUser.HasRows)
                {
                    while (rsUser.Read())
                    {
                        resposta += "<tr>";
                        resposta += "<td>" + rsUser["CAD_NOME"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_SEXO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_CPF"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_RG"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_DATA_NASCIMENTO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_TELEFONE"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_CELULAR"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_EMAIL"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_CARTAO_BESNI"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_CEP"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_LOGRADOURO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_NUMERO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_COMPLEMENTO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_BAIRRO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_CIDADE"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_ESTADO"] + "</td>";
                        resposta += "<td>" + rsUser["CAD_NEWS"] + "</td>";
                        resposta += "</tr>";
                    }
                }
                rsUser.Dispose();
                rsUser.Close();
            }
            catch (Exception)
            {
                throw;
            }

            Response.Write(resposta);
            Response.End();

        }

        public void carregaUsuarios()
        {
            try
            {
                rsCadastros = objBD.ExecutaSQL("exec psCadastros");

                if (rsCadastros == null)
                {
                    throw new Exception();
                }
                if (rsCadastros.HasRows)
                {
                    while (rsCadastros.Read())
                    {
                        usuariosCadastrados.InnerHtml += "<tr>";
                        usuariosCadastrados.InnerHtml += "  <td>"+ rsCadastros["CAD_ID"] + "</td>";
                        usuariosCadastrados.InnerHtml += "  <td>" + rsCadastros["CAD_NOME"] + "</td>";
                        usuariosCadastrados.InnerHtml += "  <td>" + rsCadastros["CAD_SEXO"] + "</td>";
                        usuariosCadastrados.InnerHtml += "  <td>" + rsCadastros["CAD_EMAIL"] + "</td>";
                        usuariosCadastrados.InnerHtml += "  <td><a href='javascript:void(0)' onClick='verUser("+ rsCadastros["CAD_ID"] +")' data-toggle='modal' data-target='#dadosUsuario'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a></td>";
                        usuariosCadastrados.InnerHtml += "</tr>";
                    }
                    carregarTotal();
                }
                rsCadastros.Dispose();
                rsCadastros.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void carregarTotal()
        {
            rsTotal = objBD.ExecutaSQL("select count(*) as total from cadastro");

            if (rsTotal == null)
            {
                throw new Exception();
            }
            if (rsTotal.HasRows)
            {
                rsTotal.Read();

                totalizador.InnerHtml = "Total de <strong>" + rsTotal["total"].ToString() +  "</strong> usuários cadastrados";
            }
        }

        //public void ActionResult TesteTableHTML()
        //{
        //    HttpContext.Response.Clear();
        //    HttpContext.Response.AddHeader("content-disposition", string.Format("attachment;filename=Teste_{0}.xls", DateTime.Now.ToString("yyyy-MM-dd_HH-mm-ss")));

        //    HttpContext.Response.ContentType = "application/ms-excel";
        //    HttpContext.Response.ContentEncoding = System.Text.Encoding.Default;

        //    StringBuilder sb = new StringBuilder();
        //    sb.Append("<style type=\"text/css\">\r\n");
        //    sb.Append(".tabHead\r\n");
        //    sb.Append("{\r\n");
        //    sb.Append("   background-color: #cccccc;\r\n");
        //    sb.Append("   border: solid 1px black;\r\n");
        //    sb.Append("}\r\n");
        //    sb.Append(".tabRow\r\n");
        //    sb.Append("{\r\n");
        //    sb.Append("   border: solid 1px black;\r\n");
        //    sb.Append("}\r\n");
        //    sb.Append("</style>\r\n\r\n");


        //    //Header
        //    sb.AppendFormat("<table>\r\n");
        //    sb.AppendFormat("<thead>\r\n");
        //    sb.AppendFormat("<tr>\r\n");
        //    sb.AppendFormat("\t<td class=\"tabHead\">Nome</td>\r\n");
        //    sb.AppendFormat("\t<td class=\"tabHead\">Telefone</td>\r\n");
        //    sb.AppendFormat("</tr>\r\n");
        //    sb.AppendFormat("</thead>\r\n");
        //    sb.AppendFormat("<tbody>\r\n");

        //    //Row
        //    sb.AppendFormat("<tr>\r\n");
        //    sb.AppendFormat("\t<td class=\"tabRow\">Eduardo</td>\r\n");
        //    sb.AppendFormat("\t<td class=\"tabRow\">11111</td>\r\n");
        //    sb.AppendFormat("</tr>\r\n");

        //    sb.AppendFormat("<tr>\r\n");
        //    sb.AppendFormat("\t<td class=\"tabRow\">Coutinho</td>\r\n");
        //    sb.AppendFormat("\t<td class=\"tabRow\">22222</td>\r\n");
        //    sb.AppendFormat("</tr>\r\n");

        //    //Footer
        //    sb.AppendFormat("</tbody>\r\n");
        //    sb.AppendFormat("</table>\r\n");

        //    HttpContext.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    HttpContext.Response.Write(sb.ToString());
        //    HttpContext.Response.End();

        //  //  return null;
        //}
    }
}