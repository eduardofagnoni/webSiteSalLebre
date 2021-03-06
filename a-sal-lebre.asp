<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<%
Dim oListaArquivos
Set oListaArquivos = New Conexao
oListaArquivos.AbreConexao()
%>

<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="Sal Lebre é o sal número 1 do Brasil. Presente em mesas dos quatro cantos do país, Lebre tem uma linha variada que atende todos os gostos.">
    <meta name="keywords" content="sal de qualidade, produção de sal, produtora de sal, distribuidor de sal, distribuidora de sal, distribuição de sal, linha de sal, referência em sal, sal saudável, sal natural, salina, maior salina, salineira, maior produção de sal, produção de sal, manufatura de sal, marca de sal, sal certificado, sal reconhecido, sal no brasil, sal sustentável, norsal, cristais de sal, tipos de sal, sal número 1, sal de cozinha, melhor sal, sal mais puro">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title>Conheça Sal Lebre – o sal mais variado e vendido do Brasil </title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->

<link rel="stylesheet" type="text/css" href="stylesheet/styleSliderAlternadoASalLebre.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleASalLebre.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">

<!-- #include file="layout/menu.asp"-->

<section class="banner-internas" style="background: url(images/topo-sal-lebre.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">			
			<div class="col-xs-12">
				<h1>A Sal Lebre</h1>
			</div>						
		</div>
	</div>
</section>

<main>	
    <section class="textos-laterais sec-1" style="background:#ffffff;">
        <div class="bg-sal-mais-vendido wow fadeInRight"></div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-5">
                    <h2 class="wow fadeInUp animate texto-left" data-wow-delay=".15s" style="text-transform: uppercase;"><strong>O sal mais vendido<br>e a linha de produTos mais completa.</strong></h2>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-7">
                    <p class="texto-azul wow fadeInUp animate">Com um produto diferente para cada tipo de paladar e receita, Sal Lebre é a marca de sal mais vendida e variada do Brasil. Todos com a mais alta qualidade, pureza e sabor, que você exige para sua família. Não é à toa que Sal Lebre é o sal número UMMMMMM do Brasil.</p>
                </div>
            </div>
            <div class="row" style="margin:40px 0 0 0">
                <div class="col-xs-12 col-sm-4">
                    <span class="wow fadeInLeft animate" data-wow-delay=".55s"><!-- #include file="layout/ico-mapa-brasil.asp" --></span>
                    <h3 class="wow fadeInUp animate" data-wow-delay=".15s">O sal que está na mesa de todo brasileiro.</h3>
                    <p class="wow fadeInUp animate" data-wow-delay=".35s">Utilizamos a malha rodoviária, ferroviária e vias marítimas para levar nosso sal aos 4 cantos do Brasil. Somos a única marca de sal com distribuição em todo o país.</p>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <span style="padding:20px 0 0 0" class="wow fadeInLeft animate" data-wow-delay=".55s"><!-- #include file="layout/ico-ondas.asp" --></span>
                    <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Mais saudável porque tem mais qualidade.</h3>
                    <p class="wow fadeInUp animate" data-wow-delay=".35s">A pureza do Sal Lebre é incomparável porque é feito com cristais de sal marinho, obtido de maneira natural.</p>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <span class="wow fadeInLeft animate" data-wow-delay=".55s"><!-- #include file="layout/ico-panela.asp" --></span>
                    <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Tem sempre um sal ideal para cada receita.</h3>
                    <p class="wow fadeInUp animate" data-wow-delay=".35s">Sal Lebre é a linha com maior variedade de produtos do mercado brasileiro. Saiba qual tipo de Sal Lebre combina mais com sua receita.</p>
                </div>
            </div>
        </div>        
    </section>

    <section class="sec-2">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h2 class="wow fadeInUp animate"><strong>Lebre é Norsal.</strong><br>Referência em sal nA AMÉRICA LATINA.</h2>
                    <p class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre é uma marca de sal pertencente à Norsal, a maior especialista em sal de alto padrão do Brasil. Sediada na Salina Miramar, localizada em Areia Branca, RN, a Norsal tem um padrão de qualidade incomparável, com produtos que vão além do sal de cozinha. É a única refinadora de sal que está presente de norte a sul do país.</p>
                </div>
            </div>

            <div class="row">
				<div class="itens-tabela">
					<a href="http://www.norsal.com.br" target="_blank" class="coluna wow fadeInLeft animate" data-wow-delay=".25s">
						<div class="cont cont-1" style="background:#16216a;">
							<h3>Quatro décadas<br>de tradição<br>e expertise.</h3>
							<p>Para a Norsal, produzir o melhor sal é uma verdadeira paixão e tradição, que você confere nos melhores mercados, desde 1973.</p>
						</div>
						<button class="bt-1">Visite o site da Norsal <span class="fa fa-angle-right"></button>
					</a>
					<a href="nosso-sal.asp" class="coluna wow fadeInUp animate" data-wow-delay=".25s">
						<div class="cont cont-2" style="background:#0096cc;">
							<h3>360 milHÕES DE QUILOS<br>de sal por ano.</h3>
							<p>A Sal Lebre tem sua origem na salina Miramar, onde construiu uma estrutura capaz de atender consumidores de norte a sul do país.</p>
						</div>
						<button class="bt-2">Conheça a Salina Miramar <span class="fa fa-angle-right"></button>
					</a>
					<a href="nosso-sal.asp" class="coluna wow fadeInRight animate" data-wow-delay=".25s">
						<div class="cont cont-3" style="background:#64d6ff;">
							<h3>A excelência<br>na produção<br>de sal.</h3>
							<p>Todos os anos são feitas pesquisas para aprimorar os processos de produção de sal, treinamentos, controle de qualidade e modernização de equipamentos.</p>
						</div>
						<button class="bt-3">Saiba mais sobre o nosso sal <span class="fa fa-angle-right"></button>
					</a>
				</div>
			</div>
            
        </div>
    </section>

    <section class="sec-3">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="col-xs-12 col-md-9">
                        <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Reconhecidamente a<br>melhor marca de sal.</h2>
                    </div>
                    <div class="col-xs-12 col-md-3"><span class="ico-selo wow fadeInUp animate" data-wow-delay=".25s"><!-- #include file="layout/ico-selo-iso.asp" --></span></div>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8">
                    <p class="wow fadeInUp animate" data-wow-delay=".35s">Para a Sal Lebre, o bem-estar dos consumidores deve estar sempre em primeiro lugar.<br>
                    Fomos a primeira marca de sal brasileira a conquistar a <strong>certificação ISO 22000</strong> para sal refinado, uma norma internacional que atesta o alto padrão de segurança do alimento.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="conteiner-slider textos-laterais sec-4">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Nosso comprometimento não é só com a qualidade.</h2>
                    <p class="align-rigth wow fadeInUp animate"  data-wow-delay=".25s" style="color:#00448a;">Mais que um sal de qualidade, a Norsal trabalha em prol da sociedade e do meio ambiente. Conheça alguns dos projetos que realizamos:</p>
                    <ul>
                        <li class="left wow fadeInLeft animate" data-wow-delay=".65s"><span class="fa fa-caret-left"></span></li>
                        <li class="right wow fadeInRight animate" data-wow-delay=".65s"><span class="fa fa-caret-right"></span></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8">
                    <div class="contenido-slider">
                        <ul class="conteudo regular slider">  

                            <%
                            oListaArquivos.AbreTabela("select id,nome,foto from "&oListaArquivos.prefixoTabela&"projeto where ativo='s' AND regTerminado='s' order by nome asc")

                            varCssItem="item"
                            while not oListaArquivos.rs.eof
                            %>

                            <li class="<%=varCssItem%>" onclick="location.href='sustentabilidade-interna.asp?id=<%=oListaArquivos.rs("id")%>'">
                                <span class="item-imagem">
                                    <img src="<%=oListaArquivos.enderecoProjetos%><%=oListaArquivos.rs("foto")%>" alt="<%=oListaArquivos.rs("nome")%>">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4><%=oListaArquivos.rs("nome")%></h4>
                                </span>                                                         
                            </li>

                            <%
                            oListaArquivos.rs.MoveNext()
                                if varCssItem="item" then
                                varCssItem="item-invert"
                                else
                                varCssItem="item"
                                end if
                            wend
                            oListaArquivos.rs.Close()
                            set oListaArquivos.rs = nothing
                            %>




                            <li class="item-invert" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-b.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Biblioteca Norsal<br>mais um item</h4>
                                </span>                                                         
                            </li>




                            <li class="item" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-a.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Escola Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item-invert" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-b.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Biblioteca Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-a.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Escola Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item-invert" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-b.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Biblioteca Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-a.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Escola Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item-invert" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-b.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Biblioteca Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-a.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Escola Norsal</h4>
                                </span>                                                         
                            </li>
                            <li class="item-invert" onclick="location.href=''">
                                <span class="item-imagem">
                                    <img src="images/marcacao-b.jpg" alt="">
                                </span>
                                <span class="item-decor"></span>
                                <span class="item-content">
                                    <h4>Biblioteca Norsal</h4>
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
	$(".regular").slick({
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
			breakpoint: 762,
			settings: {
			slidesToShow: 3,
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

/*************************************/

$('.receita-left').click(function(){
	$('.receita-slider').slick('slickPrev');
})

$('.receita-right').click(function(){
	$('.receita-slider').slick('slickNext');
})





</script>