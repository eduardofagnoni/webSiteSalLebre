<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<%
Dim oListaArquivos
Set oListaArquivos = New Conexao
oListaArquivos.AbreConexao()

id = request.querystring("id")

oListaArquivos.AbreTabela("select id,nome,texto,foto,seo_title,seo_description,seo_keyword from "&oListaArquivos.prefixoTabela&"projeto where ativo='s' AND regTerminado='s' AND id="&id)      
%>

<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="<%=oListaArquivos.rs("seo_description")%>">
    <meta name="keywords" content="<%=oListaArquivos.rs("seo_keyword")%>">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">

    <!-- Meta Facebook Markup -->
    <meta property="og:url" content="<%=oListaArquivos.caminhoInicial%>/sustentabilidade-interna.asp.asp?id=<%=id%>" >
    <meta property="og:type" content="" >
    <meta property="og:title" content="<%=oListaArquivos.rs("seo_title")%>" >
    <meta property="og:description" content="<%=oListaArquivos.rs("seo_description")%>" >
    <meta property="og:image" content="<%=oListaArquivos.enderecoProjetos%><%=oListaArquivos.rs("foto")%>" >
    <meta property="og:image:type" content="image/jpeg" >
    <meta property="og:image:width" content="1600" >
    <meta property="og:image:height" content="690" >

    <title><%=oListaArquivos.rs("seo_title")%></title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleSliderSustentabilidade.css">
<link rel="stylesheet" type="text/css" href="stylesheet/styleSustentabilidade.css">
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
                <div class="coluna">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Faz bem para a saúde, para a sociedade e para o meio ambiente.</h2>
                </div>
                <div class="coluna">
                    <p class="wow fadeInUp animate" data-wow-delay=".45s">Nosso comprometimento não é apenas com a qualidade do nosso sal. Desenvolvemos uma série de projetos voltados para a sociedade e o meio ambiente.</p>                    
                </div>
            </div>
        </div>
    </section>    

    <section class="filtros-e-navegacao">
        <div class="container">
            <div class="">
                <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso" style="width:150px; overflow:hidden">
                    <input type="button" value="< Voltar" style="cursor:pointer; margin-left:-50px;" onclick="window.history.back(); return false;">
                </form>
            </div>
        </div>
    </section>




    

    <section class="o-projeto">
        <div class="container">

            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="<%=oListaArquivos.enderecoProjetos%><%=oListaArquivos.rs("foto")%>" alt="<%=oListaArquivos.rs("nome")%>" style="width:100%;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-9">
                    <div class="conteudo">
                        <br>
                        <h2><%=oListaArquivos.rs("nome")%></h2>  
                        <br>

                        <%=oListaArquivos.rs("texto")%>

                        <div class="facebookCompartilhar">                            
                            <a href="javascript:;" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<%=oListaArquivos.caminhoInicial%>%2Fsustentabilidade-interna.asp%3Fid%3D<%=oListaArquivos.rs("id")%>', 'facebook-share-dialog', 'width=626,height=436'); return false;" class="link-compartilhar" title="Compartilhe"><span class="fa fa-facebook"></span> Compartilhe</a>

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
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s" style="font-weight: normal;"><strong>Uma linha<br>tão rica e variada</strong><br>quanto a culinária<br>brasileira.</h2>
                    
                    <a href="produtos.asp" class="bt bt-verTodos wow fadeInLeft animate" data-wow-delay=".75s">Veja todos</a>
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