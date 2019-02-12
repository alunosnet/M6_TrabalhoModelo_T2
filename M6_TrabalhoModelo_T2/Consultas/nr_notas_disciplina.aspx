﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nr_notas_disciplina.aspx.cs" Inherits="M6_TrabalhoModelo_T2.Consultas.nr_notas_disciplina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="/css/bootstrap.css" rel="stylesheet" />
    <link href="/css/css.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <!--Menu-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="/index.aspx">SI - Módulo 6</a>
        <!--Botão hamburguer-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!--Botão hamburguer-->
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <!--Alunos-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Alunos</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="../Alunos/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="../Alunos/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="../Alunos/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Alunos-->
                <!--Disciplinas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Disciplinas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown02">
                        <a class="dropdown-item" href="../Disciplinas/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="../Disciplinas/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="../Disciplinas/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Disciplinas-->
                <!--Notas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Notas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown03">
                        <a class="dropdown-item" href="../Notas/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="../Notas/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="../Notas/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Notas-->
                <!--Estatísticas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Estatísticas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item" href="../Consultas/media_aluno.aspx">Média por aluno</a>
                        <a class="dropdown-item" href="../Consultas/melhor_aluno.aspx">Melhor aluno</a>
                        <a class="dropdown-item" href="../Consultas/nr_notas_disciplina.aspx">Nr de Notas Por Disciplina</a>
                    </div>
                </li>
                <!--Estatísticas-->
            </ul>
        </div>
    </nav>
    <!--Menu-->

    <form id="form1" runat="server">
        <div class="container-fluid">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlNotas_Disciplina">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("[Nr Notas]") %>' runat="server" ID="Nr_NotasLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("[Nr Notas]") %>' runat="server" ID="Nr_NotasTextBox" /></td>
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
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("[Nr Notas]") %>' runat="server" ID="Nr_NotasTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("[Nr Notas]") %>' runat="server" ID="Nr_NotasLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table class="table table-striped" runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">nome</th>
                                        <th runat="server">Nr Notas</th>
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
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("[Nr Notas]") %>' runat="server" ID="Nr_NotasLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlNotas_Disciplina" ConnectionString='<%$ ConnectionStrings:ConnectionString_Notas_T2 %>' SelectCommand="SELECT disciplinas.nome, COUNT(*) AS [Nr Notas] FROM disciplinas INNER JOIN notas ON disciplinas.codigo = notas.codigo_disciplina GROUP BY notas.codigo_disciplina, disciplinas.nome"></asp:SqlDataSource>
        </div>
    </form>
            <!--JS-->
    <script src="/js/jquery-3.3.1.slim.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.js"></script>
</body>
</html>
