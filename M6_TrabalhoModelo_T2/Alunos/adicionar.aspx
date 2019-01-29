<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="M6_TrabalhoModelo_T2.Alunos.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlAlunos" DefaultMode="Insert">
                <EditItemTemplate>
                    nprocesso:
                    <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    genero:
                    <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    codigo_postal:
                    <asp:TextBox Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalTextBox" /><br />
                    localidade:
                    <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    genero:
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("genero") %>'>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                    <br />morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    codigo_postal:
                    <asp:TextBox Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalTextBox" /><br />
                    localidade:
                    <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nprocesso:
                    <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    data_nascimento:
                    <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                    genero:
                    <asp:Label Text='<%# Bind("genero") %>' runat="server" ID="generoLabel" /><br />
                    morada:
                    <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
                    codigo_postal:
                    <asp:Label Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalLabel" /><br />
                    localidade:
                    <asp:Label Text='<%# Bind("localidade") %>' runat="server" ID="localidadeLabel" /><br />
                    email:
                    <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" 
                ConnectionString='<%$ ConnectionStrings:ConnectionString_Notas_T2 %>' 
                InsertCommand="INSERT INTO alunos(nome, data_nascimento, genero, morada, codigo_postal, localidade, email) VALUES (@nome, @data_nascimento, @genero, @morada, @codigo_postal, @localidade, @email)" 
                SelectCommand="SELECT alunos.* FROM alunos">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="genero"></asp:Parameter>
                    <asp:Parameter Name="morada"></asp:Parameter>
                    <asp:Parameter Name="codigo_postal"></asp:Parameter>
                    <asp:Parameter Name="localidade"></asp:Parameter>
                    <asp:Parameter Name="email"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
