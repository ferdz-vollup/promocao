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
        string classe = "", retorno = "", trava = "";

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
                case "publicar":
                    puclicar(Request["CON_ID"]);
                    break;
                default:
                    carregaUsuarios();
                    carregaAprovados();
                    carregaPublicados();
                    break;
            }
        }

        public void carregaUsuarios()
        {
            rs = objBD.ExecutaSQL("select G.GAN_ID, C.CAD_NOME, C.CAD_CPF, p.CUP_NUMERO_SORTE, P.CUP_IMAGEM, (select count(*) from ganhadores where GAN_ATIVO = 2) as TOTAL, GAN_ATIVO from ganhadores G INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID) INNER JOIN cupom p on (p.CUP_ID = g.CUP_ID) where GAN_ATIVO is null or GAN_ATIVO in(1,2)");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                idAguardando.InnerHtml = "";

                while (rs.Read())
                {
                    if (aux % 2 == 0)

                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    //Travar aprovações após atigir limite
                    if (Convert.ToInt16(rs["TOTAL"]) > 9)

                    {
                        trava = "disabled";
                    }

                    idAguardando.InnerHtml += "<tr "+ classe + ">";
                    idAguardando.InnerHtml += " <td height=\"30\">" + rs["CAD_NOME"] +"</td>";
                    idAguardando.InnerHtml += " <td style=\"text-align:center\">" + rs["CAD_CPF"] + "</td>";
                    idAguardando.InnerHtml += " <td style=\"text-align:center\">" + rs["CUP_NUMERO_SORTE"] + "</td>";
                    idAguardando.InnerHtml += " <td style=\"text-align:center\"><a href=\"http://promocaobesni.com.br/upload/cupons/usuarios/" + rs["CUP_IMAGEM"] + "\" target=\"_blank\"><i class=\"fa fa-search fa-fw\"></i></a></td>";
                    idAguardando.InnerHtml += " <td style=\"text-align:center\">";
                    idAguardando.InnerHtml += " <input "+ trava +" onClick=\"aprovar("+rs["GAN_ID"]+" ,this.value)\" type=\"radio\" name=\"" + rs["GAN_ID"] + "\" value=\"2\" />Aprovado | <input  onClick=\"aprovar(" + rs["GAN_ID"] + " ,this.value)\" type=\"radio\" name=\"" + rs["GAN_ID"] + "\" value=\"1\" />Reprovado</td>";
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
            rs = objBD.ExecutaSQL("select G.CON_ID, G.GAN_ID, C.CAD_NOME, C.CAD_CPF, p.CUP_NUMERO_SORTE, P.CUP_IMAGEM, (select count(*) from ganhadores where GAN_ATIVO = 2) as TOTAL from ganhadores G INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID) INNER JOIN cupom p on (p.CUP_ID = g.CUP_ID) where G.GAN_ATIVO = 2");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                aux = 1;

                while (rs.Read())
                {
                    if (aux % 2 == 0)
                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    idAprovado.InnerHtml += "<tr " + classe + ">";
                    idAprovado.InnerHtml += " <td height=\"30\">" + rs["CAD_NOME"] + "</td>";
                    idAprovado.InnerHtml += " <td style=\"text-align:center\">" + rs["CAD_CPF"] + "</td>";
                    idAprovado.InnerHtml += " <td style=\"text-align:center\">" + rs["CUP_NUMERO_SORTE"] + "</td>";
                    idAprovado.InnerHtml += " <td style=\"text-align:center\"><a href=\"http://promocaobesni.com.br/upload/cupons/usuarios/" + rs["CUP_IMAGEM"] + "\" target=\"_blank\"><i class=\"fa fa-search fa-fw\"></i></a></td>";
                    idAprovado.InnerHtml += "</tr>";

                    if (aux > 9)
                    {
                        idAprovado.InnerHtml += "<tr>";
                        idAprovado.InnerHtml += "<td colspan='4'>&nbsp;</td>";
                        idAprovado.InnerHtml += "</tr>";

                        idAprovado.InnerHtml += "<tr>";
                        idAprovado.InnerHtml += "<td colspan='4' align=right><input onClick=\"puclicar(" + rs["CON_ID"] + ")\" type =\"button\" class=\"btn btn-lg btn-success btn-block\" value=\"Publicar Resultado\"></td>";
                        idAprovado.InnerHtml += "</tr>";
                    }

                    aux++;
                    classe = "";

                }
                
            }
            rs.Dispose();
            rs.Close();
        }

        public void carregaPublicados()
        {
            rs = objBD.ExecutaSQL("select C.CAD_NOME, C.CAD_TELEFONE, C.CAD_CELULAR, p.CON_NUMERO, p.CON_DATA from ganhadores G  INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID)  INNER JOIN concurso p on (p.CON_ID = g.CON_ID)  where G.GAN_ATIVO = 3 order by CON_DATA");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                aux = 1;

                while (rs.Read())
                {
                    if (aux % 2 == 0)
                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    idPublicado.InnerHtml += "<tr " + classe + ">";
                    idPublicado.InnerHtml += " <td height=\"30\">" + rs["CAD_NOME"] + "</td>";
                    idPublicado.InnerHtml += " <td style=\"text-align:center\">" + rs["CAD_TELEFONE"] + " | "+ rs["CAD_CELULAR"] + " </td>";
                    idPublicado.InnerHtml += " <td style=\"text-align:center\">Concurso: " + rs["CON_NUMERO"] + " | " + rs["CON_DATA"] + " </td>";
                    idPublicado.InnerHtml += "</tr>";
                    
                    aux++;
                    classe = "";

                }

            }
            rs.Dispose();
            rs.Close();
        }

        public void puclicar(string CON_ID)
        {
            rs = objBD.ExecutaSQL("exec publicarGanhadores "+ CON_ID + " ");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                aux = 1;

                while (rs.Read())
                {
                    if (aux % 2 == 0)

                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    retorno += "<tr " + classe + ">";
                    retorno += " <td height=\"30\">" + rs["CAD_NOME"] + "</td>";
                    retorno += " <td style=\"text-align:center\">" + rs["CAD_TELEFONE"] + " | " + rs["CAD_CELULAR"] + " </td>";
                    retorno += " <td style=\"text-align:center\">Concurso: " + rs["CON_NUMERO"] + " | " + rs["CON_DATA"] + " </td>";
                    retorno += "</tr>";

                    aux++;
                    classe = "";

                }

            }

            Response.Write(retorno);
            Response.End();

            rs.Dispose();
            rs.Close();
        }

        public void aprovar(string id, string value)
        {

            //Verificar se limete foi atigindo
            rs = objBD.ExecutaSQL("select count(*) as TOTAL from ganhadores where GAN_ATIVO = 2");
            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                rs.Read();

                if (Convert.ToInt16(rs["TOTAL"]) > 9 && value == "2")

                {
                    Response.Write("LIMITE");
                    Response.End();
                }
            }

            objBD.ExecutaSQL("update ganhadores set GAN_ATIVO = '" + value + "' WHERE GAN_ID = '" + id + "'");

            rs = objBD.ExecutaSQL("select G.CON_ID, G.GAN_ID, C.CAD_NOME, C.CAD_CPF, p.CUP_NUMERO_SORTE, P.CUP_IMAGEM from ganhadores G INNER JOIN cadastro c on(c.CAD_ID = g.CAD_ID) INNER JOIN cupom p on (p.CUP_ID = g.CUP_ID) where G.GAN_ATIVO = 2");

            if (rs == null)
            {
                throw new Exception();
            }
            if (rs.HasRows)
            {
                aux = 1;

                while (rs.Read())
                {
                    if (aux % 2 == 0)

                    {
                        classe = "style=\"background-color:#f5f5f5\"";
                    }

                    retorno += "<tr " + classe + ">";
                    retorno += " <td height=\"30\">" + rs["CAD_NOME"] + "</td>";
                    retorno += " <td style=\"text-align:center\">" + rs["CAD_CPF"] + "</td>";
                    retorno += " <td style=\"text-align:center\">" + rs["CUP_NUMERO_SORTE"] + "</td>";
                    retorno += " <td style=\"text-align:center\"><a href=\"http://promocaobesni.com.br/upload/cupons/usuarios/" + rs["CUP_IMAGEM"] + "\" target=\"_blank\"><i class=\"fa fa-search fa-fw\"></i></a></td>";
                    retorno += "</tr>";

                    if (aux > 9)
                    {
                        retorno += "<tr>";
                        retorno += "<td colspan='4'>&nbsp;</td>";
                        retorno += "</tr>";

                        retorno += "<tr>";
                        retorno += "<td colspan='4' align=right><input onClick=\"puclicar("+rs["CON_ID"] +")\" type =\"button\" class=\"btn btn-lg btn-success btn-block\" value=\"Publicar Resultado\"></td>";
                        retorno += "</tr>";
                    }

                    aux++;
                    classe = "";

                }

            }

            Response.Write(retorno);
            Response.End();

            rs.Dispose();
            rs.Close();
        }
    }
}