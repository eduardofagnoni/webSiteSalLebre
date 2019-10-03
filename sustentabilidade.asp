<!-- #include file="admin/_classes/__cl__conexao.asp" -->
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title></title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSustentabilidade.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">
<!-- #include file="layout/menu.asp"-->

<section class="banner-internas" style="background: url(images/topo-sustentabilidade.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1>Sustentabilidade</h1>
			</div>
		</div>
	</div>
</section>

<main>	
    
    <section>
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna" style="vertical-align: top;">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Responsabilidade que vai além dos melhores produtos.</h2>
                </div>
                <div class="coluna">
                    <p class="wow fadeInUp animate" data-wow-delay=".45s">O Sal Lebre é extraído diretamente da água do mar, diferentemente de sais de outras origens. A produção do nosso sal marinho faz uso principalmente do sol e vento em seu processo, exigindo menos combustíveis fósseis, consequentemente, minimizando a queima de carbono.</p>
                    <ul>
                        <li class="larg wow fadeInUp animate" data-wow-delay="1s">
                            <span><!-- #include file="layout/ico-combustivel.asp" --></span>
                            <p>menos COMBUSTíVEIS FÓSSEIS</p>
                        </li>
                        <li>
                            <span class="seta wow fadeInLeft animate" data-wow-delay="2s" ><!-- #include file="layout/ico-seta.asp" --></span>
                        </li>
                        <li class="larg wow fadeInUp animate" data-wow-delay="1.5s">
                            <span style="padding:0 0 10px 0"><!-- #include file="layout/ico-co2.asp" --></span>
                            <p>menos CO<sup>2</sup> na atmosfera</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="sec-2-sust">
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna">
                    <h2>Faz bem para a saúde, para a sociedade e para o meio ambiente.</h2>
                </div>
                <div class="coluna">
                    <p>Nosso comprometimento não é apenas com a qualidade de nosso sal. Desenvolvemos uma série de projetos voltados para a sociedade como um todo e ao meio ambiente.</p>                    
                </div>
            </div>
        </div>
    </section>

    <section class="filtros-e-navegacao">
        <div class="container">
            <div class="">            
            <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso">
                <input type="search" name="search" id="search"  placeholder="digite aqui sua busca" data-list=".list">
            </form>
            </div>
        </div>
    </section>

    <section class="lista-projetos">
        <div class="container">
            <div class="row list">

                <div class="col-xs-12 col-md-6 item">
                    <a href="sustentabilidade-interna.asp">
                    <div class="row tabela">                        
                            <div class="col-xs-12 col-md-6 coluna">
                                <div>
                                    <img src="images/marc_projetos.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 coluna">
                                <aside>
                                    <h3>Escola Norsal</h3>
                                    <button>Conheça <span class="fa fa-angle-right"></span></button>
                                </aside>                                
                            </div>                        
                    </div>
                    </a>
                </div>

                <div class="col-xs-12 col-md-6 item">
                    <a href="sustentabilidade-interna.asp">
                    <div class="row tabela">                        
                            <div class="col-xs-12 col-md-6 coluna">
                                <div>
                                    <img src="images/marc_projetos.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 coluna">
                                <aside>
                                    <h3>Teste 2</h3>
                                    <button>Conheça <span class="fa fa-angle-right"></span></button>
                                </aside>                                
                            </div>                        
                    </div>
                    </a>
                </div>

                <div class="col-xs-12 col-md-6 item">
                    <a href="sustentabilidade-interna.asp">
                    <div class="row tabela">                        
                            <div class="col-xs-12 col-md-6 coluna">
                                <div>
                                    <img src="images/marc_projetos.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 coluna">
                                <aside>
                                    <h3>Mais um</h3>
                                    <button>Conheça <span class="fa fa-angle-right"></span></button>
                                </aside>                                
                            </div>                        
                    </div>
                    </a>
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

<!-- jquery responsavel pelo filtro inteligente, que funciona conforme vamos digirando a palavra -->
<script type="text/javascript" src="js/jquery.hideseek.min.js"></script>

<script>
    /*------------------------------------
    busca filtro
    https://blog.mxcursos.com/jquery-filtrando-itens-de-uma-lista/
    ------------------------------------*/
    $(document).ready(function() {
        $('#search').hideseek();
    });
    /*------------------------------------
    busca filtro
    ------------------------------------*/
</script>
