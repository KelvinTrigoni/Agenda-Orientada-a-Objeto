using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaTelefonicaOrientada.Views.Home
{
    public partial class AgendaTelefonica : System.Web.UI.Page
    {
        Objeto cont = new Objeto();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                cont.preenchergrid(GridView1);

            }
        }

            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            nome.Text = GridView1.SelectedRow.Cells[2].Text;
            email.Text = GridView1.SelectedRow.Cells[3].Text;
            endereço.Text = GridView1.SelectedRow.Cells[4].Text;
            celular.Text = GridView1.SelectedRow.Cells[5].Text;
            telefone.Text = GridView1.SelectedRow.Cells[6].Text;
        }



        protected void salvar_Click1(object sender, EventArgs e)
        {
            cont.nome = nome.Text;
            cont.endereco = endereço.Text;
            cont.telefone = telefone.Text;
            cont.email = email.Text;
            cont.celular = celular.Text;
            cont.Salvar();

            Page.ClientScript.RegisterStartupScript(GetType(), "msgBox", "alert('Cadastrado com secesso!!!')", true);

            cont.preenchergrid(GridView1);

        }







        protected void Alterar_Click(object sender, EventArgs e)
        {
            cont.codigo = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            cont.nome = nome.Text;
            cont.endereco = endereço.Text;
            cont.telefone = telefone.Text;
            cont.email = email.Text;
            cont.celular = celular.Text;
            cont.alterar();

            Page.ClientScript.RegisterStartupScript(GetType(), "msgBox", "alert('Alterado com secesso!!!')", true);

            cont.preenchergrid(GridView1);

        }

        protected void Excluir_Click(object sender, EventArgs e)
        {

            cont.codigo = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            cont.excluir(cont.codigo);

            Page.ClientScript.RegisterStartupScript(GetType(), "msgBox", "alert('Excluido com secesso!!!')", true);

            cont.preenchergrid(GridView1);

        }
    }
}
