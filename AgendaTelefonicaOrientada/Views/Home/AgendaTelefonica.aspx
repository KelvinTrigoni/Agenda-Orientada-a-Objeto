<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendaTelefonica.aspx.cs" Inherits="AgendaTelefonicaOrientada.Views.Home.AgendaTelefonica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Agenda Telefonica</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link href="../../CSS/CSS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="alinhar">

             

            <button style="font-size:24px" onclick="topFunction()" id="subir" title="Go to top">  <i class="fa fa-angle-up"></i> </button>

            <div class="blocobarra">
                <div class="home"></div>

                <div class="blocohome">

                    <div class="limo">Agenda <span style="color: #fa2227; margin-left:0px;">Telefonica</span> </div>

                </div>
            </div> 

            <div class="fundo"> 
                
             </div>

            <div class="texto1">Cadastro </div>

                <asp:TextBox ID="nome" CssClass="final1_5"  placeholder="Nome"  runat="server"></asp:TextBox>
                <asp:TextBox ID="email" CssClass="final1_6" placeholder="Email"  runat="server" ></asp:TextBox>
                <asp:TextBox ID="endereço"  CssClass="final1_6"  placeholder="Endereço"  runat="server"></asp:TextBox>
                <asp:TextBox ID="celular" CssClass="final1_6" placeholder="Celular"  runat="server"></asp:TextBox>
                <asp:TextBox ID="telefone" CssClass="final1_6" placeholder="Telefone"  runat="server"></asp:TextBox>

            

              <asp:Button ID="salvar" CssClass="submit" runat="server" Text="Cadastrar" Style="font-family: fonte2bold;color: #ffffff;padding: 12px 2px;border: none;border-radius: 4px;cursor: pointer;width: 154px;margin-top: 25px;background-color: black;margin-left: 420px;font-size: 16px;transition: .6s;" OnClick="salvar_Click1" />
              <asp:Button ID="Alterar" CssClass="submit" runat="server" Text="Alterar" Style="font-family: fonte2bold;color: #ffffff;padding: 12px 2px;border: none;border-radius: 4px;cursor: pointer;width: 154px;margin-top: 25px;background-color: black;margin-left: 11px;font-size: 16px;transition: .6s;" OnClick="Alterar_Click" />
              <asp:Button ID="Excluir" CssClass="submit" runat="server" Text="Excluir" Style="font-family: fonte2bold;color: #ffffff;padding: 12px 2px;border: none;border-radius: 4px;cursor: pointer;width: 154px;margin-top: 25px;background-color: black;margin-left: 11px;font-size: 16px;transition: .6s;" OnClick="Excluir_Click"  />




<div class="blocogrid">

             <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="IDnome" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                 <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                 <Columns>
                     <asp:BoundField DataField="IDnome" HeaderText="IDnome" SortExpression="IDnome" InsertVisible="False" ReadOnly="True" />
                     <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                     <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                     <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                 </Columns>

                 <FooterStyle BackColor="black" Font-Bold="True" ForeColor="White"></FooterStyle>

                 <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

                 <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

                 <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

                 <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

                 <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
             </asp:GridView>

    </div>





             <script>
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 140 || document.documentElement.scrollTop > 140) {
        document.getElementById("subir").style.display = "block";
    } else {
        document.getElementById("subir").style.display = "none";
    }
}

function topFunction() {
    document.body.scrollTop = 0;

}
            </script>




        </div>
    </div>
    </form>
</body>
</html>
