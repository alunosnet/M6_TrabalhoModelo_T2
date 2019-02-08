using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M6_TrabalhoModelo_T2.Alunos
{
    public partial class adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlAlunos_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            string nomeFicheiro = e.Command.Parameters["@novo"].Value.ToString();
            FileUpload ficheiro = FormView1.FindControl("FileUpload1") as FileUpload;
            if (ficheiro.HasFile)
                ficheiro.SaveAs(Server.MapPath("~/Imagens/")+nomeFicheiro+".jpg");
        }
    }
}