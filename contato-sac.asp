<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="Tem dúvidas, reclamações ou sugestões? Entre em contato com nossas equipes de atendimento. Ouvir nossos clientes e nossa prioridade.">
    <meta name="keywords" content="atendimento sal lebre, dúvidas sobre sal lebre, reclamação sobre sal lebre, serviços sal lebre.">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title>Sal Lebre – Serviço de Atendimento ao Consumidor.</title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleContato.css">
<!-- #include file="layout/menu.asp"-->

<section class="banner-internas" style="background: url(images/topo-contato.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1>Contato</h1>
			</div>
		</div>
	</div>
</section>

<main>	
    
    <section>
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna">
                    <h2>Fale com a gente.</h2>
                </div>
                <div class="coluna">
                    <p>Essa é sua linha direta para entrar em contato com a equipe de atendimento Norsal.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="filtros-e-navegacao">
        <div class="container">
            <div class="row">
            <ul>
                <li><a href="contato-sac.asp">SAC</a></li>
                <!--<li><a href="contato-revendedor.asp">Seja um revendedor</a></li>-->
                <li><a href="contato.asp">Outros assuntos</a></li>
            </ul>
            <form action="_redirect-link.asp" method="post" class="frmFiltrosTipos" name="frmFiltrosTipos" id="frmFiltrosTipos">
                <select onchange="this.form.submit()" name="txtFormulario" id="txtFormulario">
                    <option>Selecione o tipo</option>
                    <option value="1">SAC</option>
                    <!--<option value="2">Seja um revendedor</option>-->
                    <option value="3">Outros assuntos</option>
                </select>
            </form>
            <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso" style="width:150px; overflow:hidden">
                <input type="button" value="< Voltar" style="cursor:pointer; margin-left:0px;" onclick="window.history.back(); return false;">
            </form>
            </div>
        </div>
    </section>

    <section class="formulario-sac">
    
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-3">
                    <h2>SAC</h2>
                    <p>(Serviço de Atendimento ao Consumidor)</p>
                </div>
                <div class="col-xs-12 col-md-9">
                    <form id="frmSAC" name="frmSAC" action="_enviar-email-sac.asp" method="post">
                        <div class="col-xs-12 col-md-6">
                            <select name="txtAssunto" id="txtAssunto" required>
                                <option>Assunto</option>
                                <option value="1">Vendas</option>
                                <option value="2">Logística</option>
                                <option value="3">Fiscal</option>
                                <option value="4">Compras</option>
                                <option value="5">Financeiro (Fornecedores)</option>
                                <option value="6">Outros</option>
                            </select>
                            <input type="text" id="txtNome" name="txtNome" placeholder="Nome" required>
                            <select name="txtSexo" id="txtSexo" required>
                                <option>Sexo</option>
                                <option value="Feminino">Feminino</option>
                                <option value="Masculino">Masculino</option>
                            </select>
                            <input type="text" id="txtDataNascimento" name="txtDataNascimento" required placeholder="Data: xx/xx/xxxx" maxlength="10" onKeyDown="Mascara(this,Data);" onKeyPress="Mascara(this,Data);" onKeyUp="Mascara(this,Data);">
                            <input type="mail" id="txtEmail" name="txtEmail" placeholder="E-mail" required onblur="IsEmail(this.value)">
                            <input type="tel" id="txtTelefone" name="txtTelefone" placeholder="Telefone" required placeholder="Tel. (xx) xxxxx-xxxx" maxlength="15" onKeyDown="Mascara(this,TelefoneCel);" onKeyPress="Mascara(this,TelefoneCel);" onKeyUp="Mascara(this,TelefoneCel);">
                            <input type="text" id="txtEndereco" name="txtEndereco" placeholder="Endereço" required>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="row">
                                <div class="col-xs-4">
                                    <input type="text" id="txtNumero" name="txtNumero" placeholder="Nº" required onKeyDown="Mascara(this,Integer);" onKeyPress="Mascara(this,Integer);" onKeyUp="Mascara(this,Integer);">
                                </div>
                                <div class="col-xs-8">
                                    <input type="text" id="txtBairro" name="txtBairro" placeholder="Bairro" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-8">
                                    <input type="text" id="txtCidade" name="txtCidade" placeholder="Cidade" required>
                                </div>
                                <div class="col-xs-4">
                                    <input type="text" id="txtEstado" name="txtEstado" placeholder="Estado" maxlength="2" required>
                                </div>
                            </div>
                            <input type="text" id="txtComplemento" name="txtComplemento" placeholder="Complemento">
                            <input type="text" id="txtCep" name="txtCep" required placeholder="CEP: xxxxx-xxx" maxlength="9" onKeyDown="Mascara(this,Cep);" onKeyPress="Mascara(this,Cep);" onKeyUp="Mascara(this,Cep);">
                            <textarea placeholder="Mensagem" id="txtMensagem" name="txtMensagem" required></textarea>
                            <button>Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
    </section>




    <section class="formulario-fale-conosco">
    
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-3">
                    <h2>Fale<br>Conosco</h2>
                    <p>Você tem dúvidas, sugestões ou críticas? Entre em contato agora mesmo com nossa equipe de atendimento.</p>
                </div>
                <div class="col-xs-12 col-md-9">
                    <form id="frmFaleConosco" name="frmFaleConosco" action="_enviar-contato.asp" method="post">
                        <div class="col-xs-12 col-md-6">
                            <select name="txtAssuntoFC" id="txtAssuntoFC" required style="background:#16216a;">
                                <option>Assunto</option>
                                <option value="1">Vendas</option>
                                <option value="7">RH</option>
                                <option value="2">Logística</option>
                                <option value="3">Fiscal</option>
                                <option value="4">Compras</option>
                                <option value="8">Cobrança</option>
                                <option value="5">Financeiro (Fornecedores)</option>
                                <option value="9">TI</option>
                            </select>
                            <input type="text" id="txtNomeFC" name="txtNomeFC" placeholder="Nome" required>
                            <input type="mail" id="txtEmailFC" name="txtEmailFC" placeholder="E-mail" required onblur="IsEmail(this.value)">
                            <input type="tel" id="txtTelefoneFC" name="txtTelefoneFC" placeholder="Telefone" required placeholder="Tel. (xx) xxxxx-xxxx" maxlength="15" onKeyDown="Mascara(this,TelefoneCel);" onKeyPress="Mascara(this,TelefoneCel);" onKeyUp="Mascara(this,TelefoneCel);">                            
                        </div>
                        <div class="col-xs-12 col-md-6">                            
                            <textarea placeholder="Mensagem" id="txtMensagemFC" name="txtMensagemFC" required></textarea>
                            <button>Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
    </section>


    

<div class="coelho"></div>
<div class="coelho-branco"></div>
<div class="coelho-sprit-3"></div>
<div class="coelho-sprit-3-branco"></div>

<section class="cobertura-konami">
    <!--
    <div class="bg-video">
        <video width="100%" height="110%" autoplay loop src="assets/videobg/video.mp4"></video>
    </div>
    -->
    <div class="coelho-sprit-4"></div>
</section>


</main>



<!-- #include file="layout/footer.asp"-->
<!-- #include file="layout/cod-footer.asp"-->
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="admin/vendors/js/mascaras.js" type="text/javascript"></script>

<!-- #include file="_mensagens_do_sistema.asp" -->