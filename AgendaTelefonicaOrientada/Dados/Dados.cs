using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AgendaTelefonicaOrientada
{
    public class Dados
    {
        SqlConnection con = new SqlConnection(@"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=TELEFONE;Data Source=CELSO-MEGA\KELVIN");


        SqlCommand cmd = null;

          SqlDataAdapter sqlda;

        public void comandosql(string Sql)
        {
            //abre a conexão
            con.Open();

            //Inseri o comando SQL e atribuir a conexão do banco
            cmd = new SqlCommand(Sql, con);

            //executa o comando
            cmd.ExecuteNonQuery();

            //fecha a conexão
            con.Close();


        }

        public void consultar(GridView Dgv, string Sql)
        {
            con.Open();
            sqlda = new SqlDataAdapter(Sql, con);
            DataSet ds = new DataSet();
            sqlda.Fill(ds);
            Dgv.DataSource = ds;
            Dgv.DataBind();
        }
    }
}