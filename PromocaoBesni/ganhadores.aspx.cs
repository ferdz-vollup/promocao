﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using Etnia.classe;
using System.Data.OleDb;

namespace PromocaoBesni
{
    public partial class ganhadores : System.Web.UI.Page
    {
        bd objBD = new bd();
        utils objUtils = new utils();
        private OleDbDataReader rsConcurso, rs;
        string classe = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            objUtils = new utils();
            objBD = new bd();

            popularGanhadores();
        }

        public void popularGanhadores()
        {
            rsConcurso = objBD.ExecutaSQL("select C.CON_ID, C.CON_DATA, C.CON_PREMIO from concurso C");

            if (rsConcurso == null)
            {
                throw new Exception();
            }

            if (rsConcurso.HasRows)
            {
                while(rsConcurso.Read())
                {
                    if (DateTime.Now.Date > Convert.ToDateTime(rsConcurso["CON_DATA"]))
                    {
                        classe = "passou";
                    }

                    divPai.InnerHtml += " <div class=\"col-sm-3 text uppercase text-center "+ classe + " \">";
                    divPai.InnerHtml += "     <div class=\"botao\">";
                    divPai.InnerHtml += "         <span>Sorteio</span>";
                    divPai.InnerHtml += "         <span>" + rsConcurso["CON_DATA"] + "</span>";
                    divPai.InnerHtml += "         <span class=\"premio\">" + rsConcurso["CON_PREMIO"] +"</span>";
                    divPai.InnerHtml += "     </div>";
                    divPai.InnerHtml += "     <div class=\"mostra-codigos\">";
                    divPai.InnerHtml += "         <div style=\"height: 30px;\"></div>";


                    //ganhadores

                    //
                    rs = objBD.ExecutaSQL("EXEC psGanhadoresSite "+ rsConcurso["CON_ID"] + " ");
                    if (rs == null)
                    {
                        throw new Exception();
                    }

                    if (rs.HasRows)
                    {
                        while (rs.Read())
                        {
                            divPai.InnerHtml += "<span class=\"codigos\">" + rs["CAD_NOME"] + "<br/>cód. " + rs["CUP_NUMERO_SORTE"] + " </span>";
                        }
                    }

                    divPai.InnerHtml += "     </div>";
                    divPai.InnerHtml += " </div>";

                    classe = "";
                }

               

            }
            rsConcurso.Dispose();
            rsConcurso.Close();
        }
    }
}