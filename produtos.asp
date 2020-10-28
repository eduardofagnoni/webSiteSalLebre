<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<%
Dim oListaArquivos
Set oListaArquivos = New Conexao
oListaArquivos.AbreConexao()

Dim oListaReceitas
Set oListaReceitas = New Conexao
oListaReceitas.AbreConexao()
%>
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="Sal Lebre é a linha de sal mais variada e vendida do Brasil. Nossos produtos estão presentes nos 4 cantos do país e atendem até os consumidores mais exigentes.">
    <meta name="keywords" content="sal lebre, comprar sal, sal marinho, sal iodado, sal refinado, sal para churrasco, sal granulado, sal moído, sal do himalaia, sal gourmet, sal bom, sal de qualidade, marcas de sal, tipos de sal, sal de supermercado, sal para varejo, marcas de sal, melhor marca de sal, sal de alto padrão, linha de sal.">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title>Sal Lebre – A linha mais completa do mercado.</title>
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
            <!--
            <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso">
                <select onchange="this.form.submit()" name="txtTipoDeUso" id="txtTipoDeUso">
                    <option>Selecione o uso</option>
                    <option value="a">Tipo de uso a</option>
                    <option value="b">Tipo de uso b</option>
                </select>
            </form>
            -->
            </div>
        </div>
    </section>

    <section class="lista-alternada-de-produtos">        
        <ul>

            <%
            oListaArquivos.AbreTabela("select id,idTipo,idUso,nome,resumo,embalagens,foto from "&oListaArquivos.prefixoTabela&"produto where ativo='s' AND regTerminado='s' order by id asc")                           
            while not oListaArquivos.rs.eof
            %>   

            <li>  
                <div class="container">                 
                    <div class="foto-produto">
                        <img src="<%=oListaArquivos.enderecoProduto%><%=oListaArquivos.rs("foto")%>" alt="<%=oListaArquivos.rs("nome")%>" class="wow fadeInLeft animate" data-wow-delay=".15s">
                    </div>
                    <div class="descricao-produto">
                        <h3 class="wow fadeInUp animate" data-wow-delay=".15s"><%=oListaArquivos.rs("nome")%></h3>
                        <p class="wow fadeInUp animate" data-wow-delay=".35s"><%=oListaArquivos.rs("resumo")%></p>
                        <small class="wow fadeInUp animate" data-wow-delay=".45s">Embalagens</small>
                        <!--<p class="wow fadeInUp animate"  data-wow-delay=".55s">Saleiro de 100 g para mesa <br>
                        Pacote de 1 kg para cozinha</p>-->
                        <div class="wow fadeInUp animate" data-wow-delay=".55s"><%=oListaArquivos.rs("embalagens")%></div>
                    </div>
                </div>
            </li>

            <%
            oListaArquivos.rs.MoveNext()                                
            wend
            oListaArquivos.rs.Close()
            set oListaArquivos.rs = nothing
            %>



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
                            
                            <%
                            oListaReceitas.AbreTabela("select id,nome,foto from "&oListaReceitas.prefixoTabela&"receitas where ativo='s' AND regTerminado='s' order by id asc")

                            while not oListaReceitas.rs.eof  
                            %>
                            
                            <li class="item">
                                <a href="receitas-interna.asp?id=<%=oListaReceitas.rs("id")%>">
                                    <span class="item-imagem" style="background:url(<%=oListaReceitas.enderecoReceita%><%=oListaReceitas.rs("foto")%>) no-repeat center center;background-size: cover;">
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