<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<%
Dim oListaProduto
Set oListaProduto = New Conexao
oListaProduto.AbreConexao()

Dim oListaReceitas
Set oListaReceitas = New Conexao
oListaReceitas.AbreConexao()
%>
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="Sal Lebre é a linha mais variada e vendido do Brasil. É mais branquinho, soltinho e tem o mais puro cristal de sal marinho.">
    <meta name="keywords" content="vendas de sal, venda de sal, comprar sal, líder em sal, sal marinho, melhor sal, sal mais vendido, sal bom, sal de qualidade, especialista em sal, especialista em sal, sal no Brasil, marca de sal, marcas de sal, melhor marca de sal, sal número 1, sal número ummm, sal de alto padrão, sal para vender, receitas saudáveis, tipos de sal, sal de cozinha, sal marinho">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title>Sal Lebre – A marca de sal mais vendida do Brasil</title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSlider.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleItensDaHome.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">
<!-- #include file="layout/menu.asp"-->

<!--
<section class="banner-home">
	<div class="container">
		<div class="row">			
			<div class="col-sm-7">
				<div class="bt-banner altura-banner" style="margin:40% 0 0 0;">

					<div id="animation_container" style="background-color:rgba(255, 255, 255, 0.00); width:495px; height:149px">
						<canvas id="canvas" width="495" height="149" style="position: absolute; display: block; background-color:rgba(255, 255, 255, 0.00);"></canvas>
						<div id="dom_overlay_container" style="pointer-events:none; overflow:hidden; width:495px; height:149px; position: absolute; left: 0px; top: 0px; display: block;">
						</div>
					</div>

					<p>Sal Lebre é a marca de sal mais vendida e variada do mercado.</p>
					<button onclick="location.href='a-sal-lebre.asp'">Saiba mais sobre o Sal Lebre</button>
				</div>
			</div>						
		</div>
	</div>
</section>
-->


<section class="banner-home-v2">
	<div class="container">
		<div class="row">			
			<div class="col-sm-12 text-center altura-banner">
				<div class="bt-banner" style="margin:0 0 0 0;">

					<div class="cont-banner"><img src="images/banner_home_v2.png" alt="O sal número um tem receitas nota 10!" /></div>

					<p>Temos dicas e receitas de dar <br>água na boca. Vem provar!</p>
					<button class="button-v2" onclick="location.href='receitas.asp'">Confira</button>
				</div>
			</div>						
		</div>
	</div>
</section>




<div id="selo-sal-na-medida" class="wow fadeInUp" data-wow-delay=".06s"><img src="images/sal-na-medida-sabor-com-saude.png" alt="Sal na medida sabor com saúde"></div>
<main>
	
	
	<section class="conteiner-slider textos-laterais">		
        <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <h2 class="wow fadeInUp animate" data-wow-delay=".15s"><strong>Uma linha tão<br>rica e variada</strong><br>Quanto a culinária brasileira.</h2>                        
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 coluna-de-produtos">
                        <div class="contenido-slider">
                            <ul class="conteudo regular slider">

								<%
								oListaProduto.AbreTabela("select id,nome,foto from "&oListaProduto.prefixoTabela&"produto where ativo='s' AND regTerminado='s' order by id asc")

								while not oListaProduto.rs.eof  
								%>

                                <li class="item">
									<a href="javascript:void(0)">
										<span class="item-imagem">
											<img src="administrador/__media/produto/<%=oListaProduto.rs("foto")%>" alt="<%=oListaProduto.rs("nome")%>">
										</span> 
								    </a>                                               
                                </li>

								<%
                                oListaProduto.rs.MoveNext()
                                wend
                                oListaProduto.rs.Close()
                                set oListaProduto.rs = nothing
                                %>  


                            </ul>

							

							<ul class="controles">
								<li class="left"><span class="fa fa-angle-left"></span></li>
								<li class="right"><span class="fa fa-angle-right"></span></li>
								<li class="btn btn-azul" onclick="location.href='produtos.asp'">Conheça a linha completa</li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
    </section>

	<section class="saudavel-para-voce-e-para-o-meio-ambiente">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="wow fadeInUp animate" data-wow-delay=".15s">SAUDÁVEL PARA VOCÊ<br>E PARA O MEIO AMBIENTE.</h2>
				</div>
			</div>
			<div class="row">
				<div class="itens-tabela">
					<a href="a-sal-lebre.asp" class="coluna wow fadeInLeft animate" data-wow-delay=".25s">
						<div class="cont cont-1" style="background:#16216a;">
							<h3>O sal que tem <br>gostinho de <br>SAÚDE.</h3>
							<p>Nosso sal marinho é uma opção muito mais saudável, pois seu processo de produção é totalmente natural.</p>
						</div>
						<button class="bt-1">Saiba mais sobre o sal Lebre <span class="fa fa-angle-right"></button>
					</a>
					<a href="nosso-sal.asp" class="coluna wow fadeInUp animate" data-wow-delay=".25s">
						<div class="cont cont-2" style="background:#0096cc;">
							<h3>Cuidado e dedicação com cada cristal de sal.</h3>
							<p>Um processo rigoroso que conta com equipamentos de última geração e tecnologias constantemente aprimoradas.</p>
						</div>
						<button class="bt-2">Confira nosso processo de produção <span class="fa fa-angle-right"></button>
					</a>
					<a href="sustentabilidade.asp" class="coluna wow fadeInRight animate" data-wow-delay=".25s">
						<div class="cont cont-3" style="background:#64d6ff;">
							<h3>O melhor sal É FABRICADO COM responsabilidade.</h3>
							<p>Métodos de produção naturais contribuindo para a sustentabilidade do meio ambiente.</p>
						</div>
						<button class="bt-3">Conheça nossos projetos <span class="fa fa-angle-right"></button>
					</a>
				</div>
			</div>
		</div>
	</section>





	<section class="conteiner-slider-receitas textos-laterais">
		
        <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Vai bem com os<br>pratos mais<br><strong>Saborosos e<br>saudáveis.</strong></h2>
						<p class="wow fadeInUp animate" data-wow-delay=".65s">Confira nossas receitas e dicas para usar o<br>sal correto, na medida certa.</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 coluna-de-produtos">
                        <div class="contenido-slider">
                            <ul class="conteudo receitas receita-slider">

								<%
								oListaReceitas.AbreTabela("select id,nome,foto from "&oListaReceitas.prefixoTabela&"receitas where ativo='s' AND regTerminado='s' order by id asc")

								while not oListaReceitas.rs.eof  
								%>
								
								<li class="item">
									<a href="receitas-interna.asp?id=<%=oListaReceitas.rs("id")%>">
										<span class="item-imagem" style="background:url(administrador/__media/receita/<%=oListaReceitas.rs("foto")%>) no-repeat center center;background-size: cover;">
											<div class="caixa-titulo wow fadeInLeft animate"><%=oListaReceitas.rs("nome")%></div>
										</span>    
									</a>                                                   
                                </li>                               

								<%
                                oListaReceitas.rs.MoveNext()
                                wend
                                oListaReceitas.rs.Close()
                                set oListaReceitas.rs = nothing
                                %> 

                               
                            </ul>

							<ul class="controles">
								<li class="receita-left"><span class="fa fa-angle-left"></span></li>
								<li class="receita-right"><span class="fa fa-angle-right"></span></li>
								<li class="btn btn-azul" onclick="location.href='receitas.asp'">Veja todas as receitas</li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
    </section>

    
    

<div class="coelho"></div>
<div class="coelho-branco"></div>
<div class="coelho-sprit-3"></div>
<div class="coelho-sprit-3-branco"></div>

<section class="cobertura-konami">
    <div class="coelho-sprit-4"></div>
</section>


</main>
<!-- #include file="layout/footer.asp"-->
<!-- #include file="layout/cod-footer.asp"-->
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- #include file="_mensagens_do_sistema.asp" -->

<script src="plugins/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">

$(document).on('ready', function() {
	$(".regular").slick({
	arrows: false,
	//mobileFirst: true,
	dots: false,
	infinite: true,
	slidesToShow: 3,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1800,
			settings: {
			slidesToShow: 3,
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 992,
			settings: {
			slidesToShow: 2,
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 762,
			settings: {
			slidesToShow: 1,
			slidesToScroll: 1
			}
		}
		/*
		{
			breakpoint: 360,
			settings: {
			slidesToShow: 1,
			slidesToScroll: 1
			}
		}*/
	]
	});

	$(".receitas").slick({
	arrows: false,
	//mobileFirst: true,
	dots: false,
	infinite: true,
	slidesToShow: 1,
	slidesToScroll: 1,
	/*
	responsive: [
		{
			breakpoint: 1800,
			settings: {
			slidesToShow: 3,
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 992,
			settings: {
			slidesToShow: 2,
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 360,
			settings: {
			slidesToShow: 1,
			slidesToScroll: 1
			}
		}
	]*/
	});
});   

$('.left').click(function(){
	$('.slider').slick('slickPrev');
})

$('.right').click(function(){
	$('.slider').slick('slickNext');
})

/*************************************/

$('.receita-left').click(function(){
	$('.receita-slider').slick('slickPrev');
})

$('.receita-right').click(function(){
	$('.receita-slider').slick('slickNext');
})

</script>




<script src="https://code.createjs.com/createjs-2015.11.26.min.js"></script>
<script src="assets/animabanner/animateBanner.js"></script>


<!--

<script>
var canvas, stage, exportRoot, anim_container, dom_overlay_container, fnStartAnimation;
function init() {
	canvas = document.getElementById("canvas");
	anim_container = document.getElementById("animation_container");
	dom_overlay_container = document.getElementById("dom_overlay_container");
	var comp=AdobeAn.getComposition("D01D1DFFC0525144B1440988C4B93D32");
	var lib=comp.getLibrary();
	var loader = new createjs.LoadQueue(false);
	loader.addEventListener("fileload", function(evt){handleFileLoad(evt,comp)});
	loader.addEventListener("complete", function(evt){handleComplete(evt,comp)});
	var lib=comp.getLibrary();
	loader.loadManifest(lib.properties.manifest);
}
function handleFileLoad(evt, comp) {
	var images=comp.getImages();	
	if (evt && (evt.item.type == "image")) { images[evt.item.id] = evt.result; }	
}
function handleComplete(evt,comp) {
	//This function is always called, irrespective of the content. You can use the variable "stage" after it is created in token create_stage.
	var lib=comp.getLibrary();
	var ss=comp.getSpriteSheet();
	var queue = evt.target;
	var ssMetadata = lib.ssMetadata;
	for(i=0; i<ssMetadata.length; i++) {
		ss[ssMetadata[i].name] = new createjs.SpriteSheet( {"images": [queue.getResult(ssMetadata[i].name)], "frames": ssMetadata[i].frames} )
	}
	exportRoot = new lib.Semtítulo1();
	stage = new lib.Stage(canvas);	
	//Registers the "tick" event listener.
	fnStartAnimation = function() {
		stage.addChild(exportRoot);
		createjs.Ticker.setFPS(lib.properties.fps);
		createjs.Ticker.addEventListener("tick", stage);
	}	    
	//Code to support hidpi screens and responsive scaling.
	AdobeAn.makeResponsive(false,'both',false,1,[canvas,anim_container,dom_overlay_container]);	
	AdobeAn.compositionLoaded(lib.properties.id);
	fnStartAnimation();
}
init();
</script>

-->



