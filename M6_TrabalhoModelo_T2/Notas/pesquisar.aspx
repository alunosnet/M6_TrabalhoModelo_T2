<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="M6_TrabalhoModelo_T2.Notas.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" ReadOnly="True" InsertVisible="False" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString_Notas_T2 %>' SelectCommand="SELECT [nprocesso], [nome], [email] FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlNotas" DataKeyNames="id">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("valor_nota") %>' runat="server" ID="valor_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("valor_nota") %>' runat="server" ID="valor_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">id</th>
                                        <th runat="server">data_nota</th>
                                        <th runat="server">valor_nota</th>
                                        <th runat="server">nr_modulo</th>
                                        <th runat="server">nprocesso</th>
                                        <th runat="server">codigo_disciplina</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("valor_nota") %>' runat="server" ID="valor_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString_Notas_T2 %>' SelectCommand="SELECT * FROM [notas] WHERE ([nprocesso] = @nprocesso)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="nprocesso" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
