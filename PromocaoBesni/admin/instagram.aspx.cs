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
    public partial class instagram : System.Web.UI.Page
    {
        private bd objBD;
        private utils objUtils;
       // Thread Atualizador;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            switch (Request["acao"])
            {
                //case "AprovarInstagram":
                //    objBD.ExecutaSQL("UPDATE Instagram_fotos SET INS_ATIVO = " + Request["INS_ATIVO"] + " where INS_ID = " + Request["INS_ID"]);
                //    Response.End();
                //    break;
                //case "ErroImagem":
                //    objBD.ExecutaSQL("DELETE from Instagram_fotos where INS_ID = " + Request["INS_ID"]);
                //    Response.WriteEnd(Request["INS_ID"]);
                //    break;
                default:
                 //   InfoInsta("teste");
                    // TrazTags();
                    // PopulaLista(Request["INS_TAGS"]);
                   // Atualizador = new Thread(() => InfoInsta(Request["URL"]));
                    //Atualizador.Start();
                    break;
            }
        }
        
    }
}