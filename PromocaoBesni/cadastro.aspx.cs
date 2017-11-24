using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Etnia.classe;
using System.Text;
using System.Data.OleDb;

namespace PromocaoBesni
{
    public partial class cadastro : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsCadastro;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificar se ainda está logado
            if (Session["cadID"] != null)
            {
                objUtils = new utils();
                PopularCadastro();
            }
        }

        private void PopularCadastro()
        {

            rsCadastro = objBD.ExecutaSQL("select * from cadastro where cad_id = "+ Session["cadID"] + " ");
            if (rsCadastro == null)
            {
                throw new Exception();
            }
            if (rsCadastro.HasRows)
            {
                rsCadastro.Read();

                nome.Attributes.Add("value", rsCadastro["CAD_NOME"].ToString());
                nome.Attributes.Add("disabled", "disabled");

                cpf.Attributes.Add("value", rsCadastro["CAD_CPF"].ToString());
                cpf.Attributes.Add("disabled", "disabled");

                rg.Attributes.Add("value", rsCadastro["CAD_RG"].ToString());
                
                dtnascimento.Attributes.Add("value", rsCadastro["CAD_DATA_NASCIMENTO"].ToString());
                dtnascimento.Attributes.Add("disabled", "disabled");

                if(rsCadastro["CAD_SEXO"].ToString()== "M")
                {
                    masc.Attributes.Add("checked", "checked");
                }
                else
                {
                    fem.Attributes.Add("checked", "checked");
                }
                
                telefone.Attributes.Add("value", rsCadastro["CAD_TELEFONE"].ToString());

                celular.Attributes.Add("value", rsCadastro["CAD_CELULAR"].ToString());

                email.Attributes.Add("value", rsCadastro["CAD_EMAIL"].ToString());
                email2.Attributes.Add("value", rsCadastro["CAD_EMAIL"].ToString());

                email.Attributes.Add("disabled", "disabled");
                email2.Attributes.Add("disabled", "disabled");

                cartao1.Attributes.Add("value", rsCadastro["CAD_CARTAO_BESNI"].ToString().Substring(0,4));
                cartao2.Attributes.Add("value", rsCadastro["CAD_CARTAO_BESNI"].ToString().Substring(4,4));
                cartao3.Attributes.Add("value", rsCadastro["CAD_CARTAO_BESNI"].ToString().Substring(8,4));
                cartao4.Attributes.Add("value", rsCadastro["CAD_CARTAO_BESNI"].ToString().Substring(12,4));

                cep.Attributes.Add("value", rsCadastro["CAD_CEP"].ToString());

                rua.Attributes.Add("value", rsCadastro["CAD_LOGRADOURO"].ToString());

                numero.Attributes.Add("value", rsCadastro["CAD_NUMERO"].ToString());

                complemento.Attributes.Add("value", rsCadastro["CAD_COMPLEMENTO"].ToString());

                bairro.Attributes.Add("value", rsCadastro["CAD_BAIRRO"].ToString());

                cidade.Attributes.Add("value", rsCadastro["CAD_CIDADE"].ToString());

                uf.Attributes.Add("value", rsCadastro["CAD_ESTADO"].ToString());
            }
        }
    }
}