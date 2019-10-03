<!-- #include file="admin/_classes/__cl__conexao.asp" -->
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title></title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSliderSustentabilidade.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleReceitas.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleErro-404.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">
<!-- #include file="layout/menu.asp"-->

<section class="banner-internas" style="background: url(images/topo-sustentabilidade.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1></h1>
			</div>
		</div>
	</div>
</section>

<main>	
    
    <section class="erro-404">
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna">
                    <h2>Confirmação revendedor</h2>
                </div>
                <div class="coluna">
                    <p>Sua mensagem foi enviada corretamente.</p>
                </div>
            </div>
        </div>
    </section>

    
    <section class="conteiner-slider textos-laterais sec-3">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s" style="font-weight: normal;"><strong>Uma linha<br>tão rica e variada</strong><br>quanto a culinária<br>brasileira.</h2>                    
                    
                    <a href="produtos.asp" class="bt bt-verTodos wow fadeInLeft animate" data-wow-delay=".75s" style="margin:0;">Veja todos</a>
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