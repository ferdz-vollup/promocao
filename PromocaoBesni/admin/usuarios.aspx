<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="PromocaoBesni.admin.usuarios" %>

<%@ Register Src="~/admin/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/admin/inc/menu-topo.ascx" TagPrefix="besni" TagName="menuTopo" %>
<%@ Register Src="~/admin/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/admin/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>

<!DOCTYPE html>
<html lang="pt">

<head>
    <besni:head runat="server" ID="head" />
    <style>
        .input-fitro {
            display: inline-block;
            width: auto;
            vertical-align: middle;
        }
    </style>
</head>

<body id="bodyInterna">
    <div id="wrapper">

        <!--menu-->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <besni:menuTopo runat="server" ID="menuTopo" />
            <besni:menu runat="server" ID="menu" />
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Usuários</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default" id="todosUsuarios">
                        <div class="panel-heading">
                            <i class="fa fa-user fa-fw"></i>Usuários cadastrados
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <label>
                                    Filtrar:
                                    <select onchange="filtrarUsuario(this.value);" name="filtro" id="fitro" aria-controls="dataTables-example" class="form-control input-sm input-fitro">
                                        <option value="null"></option>
                                        <option value="1">Com produtos</option>
                                        <option value="0">Sem produtos</option>
                                    </select>
                                </label>
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nome</th>
                                            <th>Sexo</th>
                                            <th>E-mail</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody id="usuariosCadastrados" runat="server"></tbody>
                                </table>
                                <span id="totalizador" runat="server"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="dadosUsuario" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Usuário</h4>
                </div>
                <div class="modal-body">
                    <table  class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Sexo</th>
                                <th>CPF</th>
                                <th>RG</th>
                                <th>Data de nascimento</th>
                                <th>Telefone</th>
                                <th>Celular</th>
                                <th>E-mail</th>
                                <th>Cartão Besni</th>
                                <th>CEP</th>
                                <th>Logradouro</th>
                                <th>Número</th>
                                <th>Complemento</th>
                                <th>Bairro</th>
                                <th>Cidade</th>
                                <th>Estado</th>
                                <th>Newsletter</th>
                            </tr>
                        </thead>
                        <tbody id="userCadastrado"></tbody>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>

    <script>
        function verUser(id) {
            alert("aqui")
            ajax2 = ajaxInit();
            ajax2.open("GET", "/admin/usuarios.aspx?acao=verUser&id=" + id, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {
                        jQuery("#userCadastrado").html(ajax2.responseText);
                    }
                }
            }
            ajax2.send(null);
        }

        function filtrarUsuario(id) {
            ajax2 = ajaxInit();
            ajax2.open("GET", "/ajax/acoes.aspx?acao=filtrarUsuario&id=" + id, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {
                        jQuery("#usuariosCadastrados").html(ajax2.responseText);
                    }
                }
            }
            ajax2.send(null);
        }

    </script>

    <!--footer-->
    <besni:footer runat="server" ID="footer" />
</body>

</html>
