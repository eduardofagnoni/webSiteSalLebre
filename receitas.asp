<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<%
Dim oListaArquivos
Set oListaArquivos = New Conexao
oListaArquivos.AbreConexao()

Dim oListaCategoria
Set oListaCategoria = New Conexao
oListaCategoria.AbreConexao()
%>
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="Apenas a linha de sal mais variada do mercado pode oferecer um tipo de sal perfeito para cada tipo de receita. Confira nossas dicas e receitas.">
    <meta name="keywords" content="marca de sal, marcas de sal, melhores marcas de sal, melhor sal, tipos de sal, linha de sal, sal mais indicado, sal ideal, receita, dicas culinárias.">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title>Sal Lebre – Dicas e receitas saborosas e saudáveis.</title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSliderSustentabilidade.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleReceitas.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick.css">
<link rel="stylesheet" type="text/css" href="plugins/slick/slick-theme.css">
<!-- #include file="layout/menu.asp"-->

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
                <input type="search" name="search" id="search"  placeholder="Encontre a receita" data-list=".list"><span class="fa fa-search" style="color:#ffffff;"></span>
            </form>
            </div>
        </div>
    </section>

    <section class="lista-projetos">
        <div class="container">
            <div class="row list">


                <%
                oListaArquivos.AbreTabela("select id,idCategoria,nome,resumo,foto from "&oListaArquivos.prefixoTabela&"receitas where ativo='s' AND regTerminado='s' order by id desc")                           
                while not oListaArquivos.rs.eof

                    'seleciona a categoria corrente
                    oListaCategoria.AbreTabela("select id,nome from "&oListaCategoria.prefixoTabela&"categoria_da_receita where ativo='s' AND regTerminado='s' AND id="&oListaArquivos.rs("idCategoria"))   
                    varCategoria = oListaCategoria.rs("nome")

                %>   

                <div class="col-xs-12 col-md-6 item">
                    <a href="receitas-interna.asp?id=<%=oListaArquivos.rs("id")%>">
                    <div class="row tabela">                        
                            <div class="col-xs-12 col-md-6 coluna">
                                <div style="overflow: hidden;height: 318px;">
                                    <img src="<%=oListaArquivos.enderecoReceita%><%=oListaArquivos.rs("foto")%>" alt="" style="height:318px;width:471px;">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 coluna">
                                <aside>
                                    <h3><%=varCategoria%></h3>
                                    <p><%=oListaArquivos.rs("nome")%><br>
                                    <span style="font-weight:normal; font-size:14px"><%=oListaArquivos.rs("resumo")%></span></p>
                                    <button>Ver receita <span class="fa fa-angle-right"></span></button>
                                </aside>                                
                            </div>
                    </div>
                    </a>
                </div>

                <%
                oListaArquivos.rs.MoveNext()
                wend
                oListaArquivos.rs.Close()
                set oListaArquivos.rs = nothing
                %>






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


                            <%
                            oListaArquivos.AbreTabela("select id,nome,foto from "&oListaArquivos.prefixoTabela&"produto where ativo='s' AND regTerminado='s' order by id asc")         

                            varCssItem=""                  
                            while not oListaArquivos.rs.eof
                            %>

                            <li class="item-sustentabilidade <%=varCssItem%>" <%=varStyle%>>
                                <span class="item-imagem">
                                    <span class="item-content">
                                        <h4><%=oListaArquivos.rs("nome")%></h4>
                                    </span>
                                    <img src="<%=oListaArquivos.enderecoProduto%><%=oListaArquivos.rs("foto")%>" alt="<%=oListaArquivos.rs("nome")%>">                                    
                                </span>                                                 
                            </li>

                            <%
                            oListaArquivos.rs.MoveNext()      
                                if varCssItem="" then
                                varCssItem="invert-cor"
                                varStyle="style='background:#f3f3f3'"
                                else
                                varCssItem=""
                                varStyle=""
                                end if                          
                            wend
                            oListaArquivos.rs.Close()
                            set oListaArquivos.rs = nothing
                            %>






                                                  

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

<!-- jquery responsavel pelo filtro inteligente, que funciona conforme vamos digirando a palavra -->
<script type="text/javascript" src="js/jquery.hideseek.min.js"></script>
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
