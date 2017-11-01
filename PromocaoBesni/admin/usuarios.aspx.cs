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
        private OleDbDataReader rsCadastros;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            carregaUsuarios();
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
                        usuariosCadastrados.InnerHtml += "<td>"+ rsCadastros["CAD_ID"] + "</td>";
                        usuariosCadastrados.InnerHtml += "<td>" + rsCadastros["CAD_NOME"] + "</td>";
                        usuariosCadastrados.InnerHtml += "<td>" + rsCadastros["CAD_SEXO"] + "</td>";
                        usuariosCadastrados.InnerHtml += "<td>" + rsCadastros["CAD_EMAIL"] + "</td>";
                        usuariosCadastrados.InnerHtml += "</tr>";
                    }
                }
                rsCadastros.Dispose();
                rsCadastros.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}