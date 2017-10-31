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
        Thread Atualizador;

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

        void InfoInsta(string FORM_URL)
        {
            string URL = "https://api.instagram.com/v1/tags/xuxa/media/recent?access_token=2015137874.54da896.6ed77364a00e45358f7dd0e70b3d98a8";
            AtualizarInstagram(URL, FORM_URL);
        }

        private void AtualizarInstagram(string URL, string FORM_URL)
        {
            Besni_Insta.Example response = AJAX.GET<Besni_Insta.Example>("https://api.instagram.com/v1/tags/xuxa/media/recent?access_token=2015137874.54da896.6ed77364a00e45358f7dd0e70b3d98a8");

            try
            {
                Response.Write(response.meta.code);
                Response.End();
            }
            catch (Exception)
            {

                throw;
            }

            

            //try
            //{
            //    string the_form_url = FORM_URL.IsNull();
            //    dynamic data = AJAX.JSON(URL);
            //    string NEXT_URL = ((string)data["pagination"]["next_url"]);


            //    for (int i = 0; i < ((object[])data["data"]).Length; i++)
            //    {
            //        string INS_URL = ((string)data["data"][i]["link"]).IsNull();
            //        string INS_TAGS = ((object[])data["data"][i]["tags"]).Join().IsNull("''");
            //        string INS_THUMB = ((string)data["data"][i]["images"]["thumbnail"]["url"]).IsNull();
            //        string INS_IMAGEM = ((string)data["data"][i]["images"]["standard_resolution"]["url"]).IsNull();
            //        string INS_LIKES = ((int)data["data"][i]["likes"]["count"]).ToString().IsNull("0", false);


            //        //atualiza nosso banco
            //        OleDbDataReader rsResposta = objBD.ExecutaSQL("Select INS_URL from Instagram_fotos where INS_URL = " + INS_URL);

            //        if (!rsResposta.HasRows)
            //        {
            //            string CMD = "INSERT INTO Instagram_fotos (INS_URL, INS_TAGS, INS_THUMB, INS_IMAGEM, INS_LIKES, idURL) values (" + INS_URL + "," + INS_TAGS + ", " + INS_THUMB + ", " + INS_IMAGEM + "," + INS_LIKES + ",(select idUrl from form_urls_permitidas where URL = " + the_form_url + "))";
            //            objBD.ExecutaSQL(CMD);
            //        }
            //        else
            //        {
            //            string CMD = "UPDATE Instagram_fotos SET INS_LIKES = " + INS_LIKES + ", INS_TAGS = " + INS_TAGS + " WHERE INS_URL = " + INS_URL;
            //            objBD.ExecutaSQL(CMD);
            //        }
            //        rsResposta.Close();
            //        rsResposta.Dispose();

            //    }
            //    if (NEXT_URL.IsURL())
            //    {
            //        AtualizarInstagram(NEXT_URL, the_form_url);
            //    }
            //    else
            //    {
            //        Atualizador.Abort();
            //    }
            //}
            //catch (Exception)
            //{
            //    objUtils.EnviaEmail("fernando.santos@vollup.com", "Erro na Área do Cliente", "Erro ao solicitar as fotos do Instagram");
            //}

        }
    }
}