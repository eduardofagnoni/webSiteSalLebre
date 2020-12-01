	
	<!--
	<div id="news-signup">
		<div class="wrapper">
			<div id="news-signup_close"></div>
			<div class="newsletter-content" id="phplistsubscriberesult">
				<form id="idFrmExitPopup" action="__add_lead_popexit.asp" method="post">
					
					<input class="popexit" type="text" name="txtNome" id="txtNome" placeholder="Nome*" required />
					<input class="popexit" type="email" name="txtEmail" id="txtEmail" placeholder="E-mail*" required />
					<input type="hidden" id="txtFrm-origem" name="txtFrm-origem" value="Pop-up Exit" />
					<button type="submit">Enviar</button>
					<div class="popObrigado"><img src="images/popexit/popObrigado.png" alt="" /></div>   
				</form>
								
			</div>
		</div>
	</div>
	-->

	<div id="bio_ep">
		<div class="wrapper">
			<!--<div id="news-signup_close"></div>-->
			<div class="newsletter-content" id="phplistsubscriberesult">
				<form id="idFrmExitPopup" action="__add_lead_popexit.asp" method="post">
					
					<input class="popexit" type="text" name="txtNome" id="txtNome" placeholder="Nome*" required />
					<input class="popexit" type="email" name="txtEmail" id="txtEmail" placeholder="E-mail*" required />
					<input type="hidden" id="txtFrm-origem" name="txtFrm-origem" value="Pop-up Exit" />
					<button type="submit">Enviar</button>
					<div class="popObrigado"><img src="images/popexit/popObrigado.png" alt="" /></div>   
				</form>
								
			</div>
		</div>
	</div>





	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<a href="default.asp" id="logo" title="Sal Lebre"><!-- #include file="logo-azul.asp"--></a>
				</div>
				<div class="col-md-9">
					<div class="row">
						<div class="col-sm-3 col-md-3">
							<p><a href="a-sal-lebre.asp">Institucional</a></p>
							<ul>
								<li><a href="a-sal-lebre.asp">A Sal Lebre</a></li>
								<li><a href="https://www.norsal.com.br" target="_blank">A Norsal</a></li>
							</ul>
						</div>
						<div class="col-sm-3 col-md-3">
							<p><a href="nosso-sal.asp">Nosso Sal</a></p>
							<ul>
								<li><a href="nosso-sal.asp#producao">Produção</a></li>
								<li><a href="nosso-sal.asp#do-mar-ate-sua-mesa">Do mar até sua mesa</a></li>
								<li><a href="nosso-sal.asp#salinas-miramar">Salina Miramar</a></li>
							</ul>
						</div>
						<div class="col-sm-3 col-md-3">
							<p><a href="produtos.asp">Produtos</a></p>
							<ul>
								<li><a href="produtos.asp">Refinado</a></li>
								<li><a href="produtos.asp">Grosso</a></li>
								<li><a href="produtos.asp">Gourmet Parrilla</a></li>
								<li><a href="produtos.asp">Flor de Sal</a></li>
								<li><a href="produtos.asp">Gourmet Himalaia</a></li>
							</ul>
						</div>
						<div class="col-sm-3 col-md-3">
							<p><a href="contato.asp">Contato</a></p>
							<ul>
								<li><a href="contato-sac.asp">SAC</a></li>
								<li><a href="contato.asp">Fale Conosco</a></li>
							</ul>
							<br>
							<p><a href="receitas.asp">Receitas</a></p>
							<p><a href="campanhas.asp">Campanha</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-md-6">
					<form action="_enviar-newsletter.asp" method="post" id="formulario-newsletter" name="formulario-newsletter">
						<label style="font-weight: normal;"><strong>Cadastre-se</strong> para receber novidades do Sal Lebre.</label>
						<div class="row">
							<div class="col-xs-6">
								<input type="text" id="txtNomeNews" name="txtNomeNews" placeholder="Nome" required >
								<input type="email" id="txtEmailNews" name="txtEmailNews" placeholder="e-mail" required  onblur="IsEmail(this.value)">							
							</div>
							<div class="col-xs-2">
								<button type="submit">Cadastrar</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-xs-12 col-md-6">
				 	<ul class="redes-sociais">
					 	<li><a href="https://www.youtube.com/channel/UCcgyL1onTodeUm8Hj2FN6Nw?view_as=subscriber" target="_blank"><span class="fa fa-youtube"></span></a></li>
						<li><a href="https://www.facebook.com/sallebreoficial/" target="_blank"><span class="fa fa-facebook-square"></span></a></li> 
						<li><a href="https://www.instagram.com/sallebreoficial/?hl=pt-br" target="_blank"><span class="fa fa-instagram"></span></a></li>
					</ul>					
				</div>
			</div>
		</div>
	</footer>