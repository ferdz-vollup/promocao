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
        .vermelho {color:#a8272d}
        .labelUser {display:inline-block}
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
                    <div>
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="text-uppercase vermelho">Dados pessoais</h4>
                                <br>
                            </div>
                        </div>
                        <div>
                            <div class="row">
                                <div class="col-md-12">
                                    <strong class="labelUser">Nome: </strong>
                                    <div class="labelUser">Eliane Pereira da Silva</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-6">
                                    <strong class="labelUser">CPF: </strong>
                                    <div class="labelUser">315.370.138-58</div>
                                </div>
                                <div class="col-sm-6">
                                    <strong class="labelUser">RG: </strong>
                                    <div class="labelUser">35.193.099-1</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-6">
                                    <strong class="labelUser">Data de nascimento: </strong>
                                    <div class="labelUser">16/04/1985</div>
                                </div>
                                <div class="col-sm-6">
                                    <strong class="labelUser">Sexo: </strong>
                                    <div class="labelUser">F</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-6">
                                    <strong class="labelUser">Telefone: </strong>
                                    <div class="labelUser">(99) 9999-9999</div>
                                </div>
                                <div class="col-sm-6">
                                    <strong class="labelUser text-center">Celular: </strong>
                                    <div class="labelUser">(11) 94874-1123</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-12">
                                    <strong class="labelUser">E-mail: </strong>
                                    <div class="labelUser">eli280710@gmail.com</div>
                                </div>
                            </div>
        
                            <div class="row not-flex " style="margin-top:20px">
                                <div class="col-md-12">
                                    <strong class="labelUser">Cartão Besni: </strong>
                                    <div class="labelUser">0190 5502 3862 0185</div>
                                </div>
                            </div>
                            <hr>
                            <div class="row" style="margin-top:15px">
                                <div class="col-md-12">
                                    <h4 class="text-uppercase vermelho">Endereço</h4>
                                    <br>
                                </div>
                            </div>
        
                            <div class="row" style="margin-top:10px">
                                <div class="col-md-8">
                                    <strong class="labelUser">CEP: </strong>
                                    <div class="labelUser">08473-220</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-12">
                                    <strong class="labelUser">Endereço: </strong>
                                    <div class="labelUser">Rua Gildo Lopes, 02</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-6">
                                    <strong class="labelUser">Complemento: </strong>
                                    <div class="labelUser">Não tem</div>
                                </div>
                                <div class="col-sm-6">
                                    <strong class="labelUser text-center">Bairro: </strong>
                                    <div class="labelUser">Cohab Sitio Conceição</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:10px">
                                <div class="col-sm-6">
                                    <strong class="labelUser">Cidade: </strong>
                                    <div class="labelUser">São Paulo</div>
                                </div>
                                <div class="col-sm-6">
                                    <strong class="labelUser text-center">UF: </strong>
                                    <div class="labelUser">SP</div>
                                </div>
                            </div>
                        </div>
                    </div>
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
            ajax2 = ajaxInit();
            ajax2.open("GET", "/admin/usuarios.aspx?acao=verUser&id=" + id, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {
                        jQuery("#userCadastrado").html(ajax2.responseText);
                        console.log(ajax2.responseText)
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
