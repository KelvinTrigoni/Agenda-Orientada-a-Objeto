using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AgendaTelefonicaOrientada
{
    public class Objeto
    {
        public int codigo { get; set; }

        public string nome { get; set; }

        public string endereco { get; set; }

        public string telefone { get; set; }

        public string email { get; set; }

        public string celular { get; set; }

        Dados dados = new Dados();


        public void Salvar()
        {
            try
            {
                dados.comandosql("insert into Cadastroo(Nome,Email,Endereco,Celular,Telefone) values('" + nome + "','" + email + "','" + endereco + "','" + celular + "','" + telefone + "')");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void alterar()
        {
            try
            {
                dados.comandosql("Update Cadastroo set Nome='" + nome + "',Email='" + email + "',Endereco='" + endereco + "',Celular='" + celular + "',Telefone='" + telefone + "' where IDnome='" + codigo + "'");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void excluir(int codigo)
        {
            try
            {
                dados.comandosql("DELETE FROM Cadastroo WHERE IDnome='" + codigo + "'");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void preenchergrid(GridView Dgv)
        {
            try
            {
                dados.consultar(Dgv, "select * from Cadastroo");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
