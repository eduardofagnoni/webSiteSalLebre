<!-- #include file="admin/_classes/__cl__conexao.asp" -->
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title></title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSlider.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleProdutos.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">
<!-- #include file="layout/menu.asp"-->

<section class="banner-internas" style="background: url(images/topo-produtos.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1>Produtos</h1>
			</div>
		</div>
	</div>
</section>

<main>	
    
    <section>
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna">
                    <h2>Uma linha tão rica e variada quanto a culinária brasileira.</h2>
                </div>
                <div class="coluna">
                    <p>Sal Lebre é a linha de sal mais variada e vendida do Brasil. Isso significa que tem sempre um tipo de Sal Lebre que combina perfeitamente com sua receita. </p>
                </div>
            </div>
        </div>
    </section>

    <section class="filtros-e-navegacao">
        <div class="container">
            <div class="row">
            <ul>
                <li><a href="">Refinado</a></li>
                <li><a href="">Churrasco</a></li>
                <li><a href="">Light</a></li>
                <li><a href="">Sachê</a></li>
                <li><a href="">Gourmet Parrilha</a></li>
                <li><a href="">Gourmet Himalaia</a></li>
                <li><a href="">Flor de Sal</a></li>
            </ul>
            <form action="" method="post" class="frmFiltrosTipos" name="frmFiltrosTipos" id="frmFiltrosTipos">
                <select onchange="this.form.submit()" name="txtTipoDeSal" id="txtTipoDeSal">
                    <option>Selecione o tipo</option>
                    <option value="1">Refinado</option>
                    <option value="2">Churrasco</option>
                    <option value="3">Light</option>
                    <option value="4">Sachê</option>
                    <option value="5">Gourmet Parrilha</option>
                    <option value="6">Gourmet Himalaia</option>
                    <option value="7">Flor de Sal</option>
                </select>
            </form>
            <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso">
                <select onchange="this.form.submit()" name="txtTipoDeUso" id="txtTipoDeUso">
                    <option>Selecione o uso</option>
                    <option value="a">Tipo de uso a</option>
                    <option value="b">Tipo de uso b</option>
                </select>
            </form>
            </div>
        </div>
    </section>

    <section class="lista-alternada-de-produtos">        
        <ul>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/1.png" alt="" class="wow fadeInLeft animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/2.png" alt="" class="wow fadeInRight animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/3.png" alt="" class="wow fadeInLeft animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/2.png" alt="" class="wow fadeInRight animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/1.png" alt="" class="wow fadeInLeft animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/2.png" alt="" class="wow fadeInRight animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="images/produtos/3.png" alt="" class="wow fadeInLeft animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre MARINHO Refinado</h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s">O sal número UMMMMM do Brasil, feito com cristais de sal marinho. Cai bem em qualquer receita e faz sucesso em todo o país. Tem altíssima qualidade e fluidez.</p>
                        <small class="wow fadeInUp animate"  data-wow-delay=".45s">Embalagens</small>
                        <p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>
                    </div>
                </div>
            </li>
        </ul>        
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
                            <li class="item">
                                <a href="">
                                    <span class="item-imagem" style="background:url(images/receitas/foto.jpg) no-repeat center center;background-size: cover;">
                                        <div class="caixa-titulo wow fadeInLeft animate">O nome da receita fica aqui nesse quadro.</div>
                                    </span>    
                                </a>                                                   
                            </li>
                            <li class="item">
                                <a href="">
                                    <span class="item-imagem" style="background:url(images/receitas/foto.jpg) no-repeat center center;background-size: cover;">
                                        <div class="caixa-titulo">O nome da receita fica aqui nesse quadro.</div>
                                    </span>    
                                </a>
                            </li>
                            <li class="item">
                                <a href="">
                                    <span class="item-imagem" style="background:url(images/receitas/foto.jpg) no-repeat center center;background-size: cover;">
                                        <div class="caixa-titulo">O nome da receita fica aqui nesse quadro.</div>
                                    </span>    
                                </a> 
                            </li>
                        </ul>

                        <ul class="controles">
                            <li class="receita-left"><span class="fa fa-angle-left"></span></li>
                            <li class="receita-right"><span class="fa fa-angle-right"></span></li>
                            <li class="btn btn-azul">Conheça a linha completa</li>
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
	$(".receitas").slick({
	arrows: false,
	//mobileFirst: true,
	dots: false,
	infinite: true,
	slidesToShow: 1,
	slidesToScroll: 1,	
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