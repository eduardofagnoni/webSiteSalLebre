<!-- #include file="admin/_classes/__cl__conexao.asp" -->
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">

    <!-- Meta Facebook Markup -->
    <meta property="og:url" content="" >
    <meta property="og:type" content="" >
    <meta property="og:title" content="" >
    <meta property="og:description" content="" >
    <meta property="og:image" content="" >
    <meta property="og:image:type" content="image/jpeg" >
    <meta property="og:image:width" content="1600" >
    <meta property="og:image:height" content="690" >

    <title></title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSliderSustentabilidade.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleReceitas.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">
<!-- #include file="layout/menu.asp"-->

<div id="fb-root"></div>
<script>(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.9&appId=271693406641196";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<section class="banner-internas" style="background: url(images/topo-receitas.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1>Receitas</h1>
			</div>
		</div>
	</div>
</section>

<main>	
    
    <section>
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Vai bem com pratos saborosos e saudáveis.</h2>
                </div>
                <div class="coluna">
                    <p class="wow fadeInUp animate" data-wow-delay=".45s">Sal Lebre é a linha mais completa, ideal para deixar todo tipo de prato ainda mais saboroso. Confira nossas receitas e dicas para usar o sal correto, na medida certa.</p>                    
                </div>
            </div>
        </div>
    </section>    

    <section class="filtros-e-navegacao">
        <div class="container">
            <div class="">
                <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso">
                    <input type="button" value="< Voltar" style="cursor:pointer;" onclick="window.history.back(); return false;">
                </form>
            </div>
        </div>
    </section>


    

    <section class="o-projeto">
        <div class="container">

            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="images/marc_receitas.jpg" alt="">

                    <h3>Ingredientes</h3>

                    <p>• Lorem ipsounv vortes<br>
                    • Lorem ipsum dolor sit amet<br>
                    • Consectetuer<br>
                    • Adipiscing elit<br>
                    • Sed diam nonummy</p>

                </div>
                <div class="col-xs-12 col-sm-8 col-md-9">
                    <div class="conteudo">
                        <small>Acompanhamento</small>  

                        <h2>Lorem ipsum dolor sit. </h2>

                        <p><strong>Modo de preparo</strong><br>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>  

                        
                        <div class="facebookCompartilhar">

                            <a href="javascript:;" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=https://www.sallebre.com.br/receitas-interna.asp', 'facebook-share-dialog', 'width=626,height=436'); return false;" class="link-compartilhar" title="Compartilhe"><span class="fa fa-facebook"></span> Compartilhe</a>

                            <!--
                            <a href="javascript:;" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<%'=oConexao.caminhoInicial%>%2Ftrabalho.asp%3Fid%3D<%'=oConexao.rs("id")%>&amp;src=sdkpreparse', 'facebook-share-dialog', 'width=626,height=436'); return false;" class="link-compartilhar" title="Compartilhe"><img src="images/btCompartilharFace.gif" alt="Compartilhar no Facebook"></a>
                            -->

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>    


    <section class="conteiner-slider textos-laterais sec-3">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s">nossa SUGESTÃO PARA essa RECEITA.</h2>
                    <div>
                        <p class="align-rigth">Deixe seu prato ainda mais saboroso.</p>
                    </div>                  
                    
                    <a href="produtos.asp" class="bt bt-verTodos wow fadeInLeft animate" data-wow-delay=".75s">Veja todos</a>
                    <ul>                        
                        <li class="left wow fadeInLeft animate" data-wow-delay=".65s"><span class="fa fa-caret-left"></span></li>
                        <li class="right wow fadeInRight animate" data-wow-delay=".65s"><span class="fa fa-caret-right"></span></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8">
                    <div class="contenido-slider">
                        <ul class="conteudo produtos slider">                        

                            <li class="item-sustentabilidade">
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4>Sal Lebre MARINHO Refinado</h4>
                                    </span>
                                    <img src="images/produtos/1.png" alt="">                                    
                                </span>                                                 
                            </li>
                            <li class="item-sustentabilidade invert-cor">
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4>SAL LEBRE LIGHT</h4>
                                    </span>
                                    <img src="images/produtos/2.png" alt="">                                    
                                </span>                                                 
                            </li>
                            <li class="item-sustentabilidade">
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4>SAL LEBRE SACHÊ</h4>
                                    </span>
                                    <img src="images/produtos/3.png" alt="">                                    
                                </span>                                                 
                            </li>
                            <li class="item-sustentabilidade invert-cor">
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4>Sal Lebre MARINHO Refinado</h4>
                                    </span>
                                    <img src="images/produtos/1.png" alt="">                                    
                                </span>                                                 
                            </li>
                            <li class="item-sustentabilidade">
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4>SAL LEBRE LIGHT</h4>
                                    </span>
                                    <img src="images/produtos/2.png" alt="">                                    
                                </span>                                                 
                            </li>
                            <li class="item-sustentabilidade invert-cor">
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4>SAL LEBRE SACHÊ</h4>
                                    </span>
                                    <img src="images/produtos/3.png" alt="">                                    
                                </span>                                                 
                            </li>                            

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
<script src="plugins/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">

$(document).on('ready', function() {
	$(".produtos").slick({
	arrows: false,
	//mobileFirst: true,
	dots: false,
	infinite: true,
	slidesToShow: 5,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1800,
			settings: {
			slidesToShow: 5,
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 992,
			settings: {
			slidesToShow: 4,
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 768,
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
	]
	});

	
});   

$('.left').click(function(){
	$('.slider').slick('slickPrev');
})

$('.right').click(function(){
	$('.slider').slick('slickNext');
})

</script>