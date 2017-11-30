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
    public partial class cupons : System.Web.UI.Page
    {
        private bd objBD;
        private utils objUtils;
        private OleDbDataReader rs;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            carregaCupons();

        }

        public void carregaCupons()
        {
            try
            {
                rs = objBD.ExecutaSQL("select top 100 CUP_NUMERO_SORTE, CAD_ID, CUP_VALOR, convert(varchar(10),CUP_DH_CADASTRO,103) as DH_CADASTRO from cupom order by cup_id desc");

                if (rs == null)
                {
                    throw new Exception();
                }
                if (rs.HasRows)
                {
                    while (rs.Read())
                    {
                        cuponsCadastrados.InnerHtml += "<tr>";
                        cuponsCadastrados.InnerHtml += "<td>"+ rs["CUP_NUMERO_SORTE"].ToString() + "</td>";
                        cuponsCadastrados.InnerHtml += "<td>" + rs["CAD_ID"].ToString() + "</td>";
                        cuponsCadastrados.InnerHtml += "<td>" + string.Format(CultureInfo.GetCultureInfo("pt-BR"), "R$  {0:0.0,0}", rs["CUP_VALOR"]) + "</td>";
                        cuponsCadastrados.InnerHtml += "<td>" + rs["DH_CADASTRO"].ToString() + "</td>";
                        cuponsCadastrados.InnerHtml += "</tr>";
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}


//                                            
//                                       