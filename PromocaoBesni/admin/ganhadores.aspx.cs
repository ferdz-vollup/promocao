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
    public partial class ganhadores : System.Web.UI.Page
    {
        private bd objBD;
        private utils objUtils;
        private OleDbDataReader rs;
        int aux = 1;
        string classe = "", retorno = "" ;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            string acao = Request["acao"];

            switch (acao)
            {
                case "aprovar":
                    aprovar(Request["id"], Request["valor"]);
                    break;
                default:
                    carregaUsuarios();
                    carregaAprovados();
                    break;
            }
        }

        public void carregaUsuarios()
        {
            rs = objBD.ExecutaSQL("select G.GAN_ID, C.CAD_NOME, C.CAD_CPF, p.CUP_NUMERO_SORTE, P.CUP_IMAGEM from ganhadores G INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID) INNER JOIN cupom p on (p.CUP_ID = g.CUP_ID) where G.GAN_ATIVO IS NULL");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                while (rs.Read())
                {
                    if (aux % 2 == 0)

                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    idAguardando.InnerHtml += "<tr "+ classe + ">";
                    idAguardando.InnerHtml += " <td>"+rs["CAD_NOME"] +"</td>";
                    idAguardando.InnerHtml += " <td>" + rs["CAD_CPF"] + "</td>";
                    idAguardando.InnerHtml += " <td>" + rs["CUP_NUMERO_SORTE"] + "</td>";
                    idAguardando.InnerHtml += " <td><a href=\"http://promocaobesni.com.br/upload/cupons/usuarios/"+ rs["CUP_IMAGEM"] + "\" target=\"_blank\"><i class=\"fa fa-search fa-fw\"></i></a></td>";
                    idAguardando.InnerHtml += " <td>";
                    idAguardando.InnerHtml += " <input onClick=\"aprovar("+rs["GAN_ID"]+" ,this.value)\" type=\"radio\" name=\"" + rs["GAN_ID"] + "\" value=\"2\" />Aprovado | <input  onClick=\"aprovar(" + rs["GAN_ID"] + " ,this.value)\" type=\"radio\" name=\"" + rs["GAN_ID"] + "\" value=\"1\" />Reprovado</td>";
                    idAguardando.InnerHtml += "</tr>";

                    aux++;
                    classe = "";
                }
            }

            rs.Dispose();
            rs.Close();
        }
        
        public void carregaAprovados()
        {
            rs = objBD.ExecutaSQL("select G.GAN_ID, C.CAD_NOME, C.CAD_CPF, p.CUP_NUMERO_SORTE, P.CUP_IMAGEM from ganhadores G INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID) INNER JOIN cupom p on (p.CUP_ID = g.CUP_ID) where G.GAN_ATIVO = 2");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                while (rs.Read())
                {
                    if (aux % 2 == 0)

                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    idAprovado.InnerHtml += "<tr " + classe + ">";
                    idAprovado.InnerHtml += " <td>" + rs["CAD_NOME"] + "</td>";
                    idAprovado.InnerHtml += " <td>" + rs["CAD_CPF"] + "</td>";
                    idAprovado.InnerHtml += " <td>" + rs["CUP_NUMERO_SORTE"] + "</td>";
                    idAprovado.InnerHtml += " <td><a href=\"http://promocaobesni.com.br/upload/cupons/usuarios/" + rs["CUP_IMAGEM"] + "\" target=\"_blank\"><i class=\"fa fa-search fa-fw\"></i></a></td>";
                    idAprovado.InnerHtml += "</tr>";

                    aux++;
                    classe = "";
                }
                
            }
            rs.Dispose();
            rs.Close();
        }

        public void aprovar(string id, string value)
        {

            objBD.ExecutaSQL("update ganhadores set GAN_ATIVO = '" + value + "' WHERE GAN_ID = '" + id + "'");

            rs = objBD.ExecutaSQL("select G.GAN_ID, C.CAD_NOME, C.CAD_CPF, p.CUP_NUMERO_SORTE, P.CUP_IMAGEM from ganhadores G INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID) INNER JOIN cupom p on (p.CUP_ID = g.CUP_ID) where G.GAN_ATIVO = 2");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                while (rs.Read())
                {
                    if (aux % 2 == 0)

                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    retorno += "<tr " + classe + ">";
                    retorno += " <td>" + rs["CAD_NOME"] + "</td>";
                    retorno += " <td>" + rs["CAD_CPF"] + "</td>";
                    retorno += " <td>" + rs["CUP_NUMERO_SORTE"] + "</td>";
                    retorno += " <td><a href=\"http://promocaobesni.com.br/upload/cupons/usuarios/" + rs["CUP_IMAGEM"] + "\" target=\"_blank\"><i class=\"fa fa-search fa-fw\"></i></a></td>";
                    retorno += "</tr>";

                    aux++;
                    classe = "";
                }
                Response.Write(retorno);
                Response.End();
            }
            rs.Dispose();
            rs.Close();
        }
    }
}