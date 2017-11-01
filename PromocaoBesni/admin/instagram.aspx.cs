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
        private OleDbDataReader rsFotosNaoAprovadas, rsFotosAprovadas;

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            imagensNaoAprovadas();
            imagensAprovadas();

            string acao = Request["acao"];

            switch (acao)
            {
                case "carregaFotos":
                    //imagensNaoAprovadasResp();
                    //imagensAprovadasResp();
                    break;
                default:
                    break;
            }
        }

        public void imagensNaoAprovadas()
        {
            try
            {
                rsFotosNaoAprovadas = objBD.ExecutaSQL("exec psInstagramPorAtivo 0,12");

                if (rsFotosNaoAprovadas == null)
                {
                    throw new Exception();
                }
                if (rsFotosNaoAprovadas.HasRows)
                {
                    fotosNaoAprovadas.InnerHtml = "";

                    while (rsFotosNaoAprovadas.Read())
                    {
                        fotosNaoAprovadas.InnerHtml += "<a href='javascript:void(0)' rel=\"nofollow\" onClick='mudaStatusFoto(1, "+ rsFotosNaoAprovadas["INS_ID"] + ")' data-id='"+rsFotosNaoAprovadas["INS_ID"]+"' class='fotosInstagram'>";
                        fotosNaoAprovadas.InnerHtml += "    <div class='picInsta'>";
                        fotosNaoAprovadas.InnerHtml += "        <div><i class='fa fa-check-circle'></i></div>";
                        fotosNaoAprovadas.InnerHtml += "        <img src='" + rsFotosNaoAprovadas["INS_THUMB"] + "'>";
                        fotosNaoAprovadas.InnerHtml += "    </div>";
                        fotosNaoAprovadas.InnerHtml += "</a>";
                    }
                }
                rsFotosNaoAprovadas.Dispose();
                rsFotosNaoAprovadas.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void imagensAprovadas()
        {
            try
            {
                rsFotosAprovadas = objBD.ExecutaSQL("exec psInstagramPorAtivo 1,12");

                if (rsFotosAprovadas == null)
                {
                    throw new Exception();
                }
                if (rsFotosAprovadas.HasRows)
                {

                    fotosAprovadas.InnerHtml = "";

                    while (rsFotosAprovadas.Read())
                    {
                        fotosAprovadas.InnerHtml += "<a href='javascript:void(0)' rel=\"nofollow\" onClick='mudaStatusFoto(0, " + rsFotosAprovadas["INS_ID"] + ")' data-id='" + rsFotosAprovadas["INS_ID"] + "' class='fotosInstagram'>";
                        fotosAprovadas.InnerHtml += "    <div class='picInsta'>";
                        fotosAprovadas.InnerHtml += "        <div><i class='fa fa-times-circle'></i></div>";
                        fotosAprovadas.InnerHtml += "        <img src='" + rsFotosAprovadas["INS_THUMB"] + "'>";
                        fotosAprovadas.InnerHtml += "    </div>";
                        fotosAprovadas.InnerHtml += "</a>";
                    }
                }
                rsFotosAprovadas.Dispose();
                rsFotosAprovadas.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}