<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="PromocaoBesni.inc.menu" %>
<section id="menu">
	<div class="container">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="/"></a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav navbar-right">
				<li><a id="como" runat="server"  href="/como-participar.aspx">como participar</a></li>
				<li><a id="log" runat="server"  href="/login.aspx">cadastro</a></li>
				<li><a id="premio" runat="server"  href="/premios.aspx">prêmios</a></li>
				<li><a id="ganha" runat="server"  href="/ganhadores.aspx">ganhadores</a></li>
				<li><a id="regula" runat="server"  href="/regulamento.aspx">regulamento</a></li>
                <li><a id="faq" runat="server"  href="/faq.aspx">FAQ</a></li>
				<li><a id="fale" runat="server"  href="/fale-conosco.aspx">fale conosco</a></li>
				<li><a id="onde" runat="server" href="/onde-estamos.aspx">onde estamos</a></li>
			  </ul>
			</div>
		  </div>
		</nav>
	</div>
</section>