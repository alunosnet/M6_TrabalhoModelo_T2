<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar2.aspx.cs" Inherits="M6_TrabalhoModelo_T2.Notas.pesquisar2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
