<!-- #include file="administrador/_classes/__cl__conexao.asp" -->
<%
Dim oListaArquivos
Set oListaArquivos = New Conexao
oListaArquivos.AbreConexao()
%>
<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="Além de se preocupar com a mais alta qualidade do sal, desenvolvemos diversos programas que visam o bem-estar social e a preservação do meio ambiente. Acesse para saber mais!">
    <meta name="keywords" content="sal saudável, sal responsável, sal natural, sal ecológico, bem-estar, sustentabilidade, projetos sociais, preservação do meio ambiente.">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title>Sal Lebre – Faz bem para você e para o meio ambiente.</title>
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
                    <h2 style="font-weight:normal;padding-top:20px; padding-bottom:20px;">Faz bem para a saúde, para a sociedade e para o meio ambiente.</h2>
                </div>
                <div class="coluna">
                    <p style="padding-top:20px; padding-bottom:20px;">Nosso comprometimento não é apenas com a qualidade de nosso sal. Desenvolvemos uma série de projetos voltados para a sociedade como um todo e ao meio ambiente.</p>                    
                </div>
            </div>
        </div>
    </section>

    <section class="filtros-e-navegacao">
        <div class="container">
            <div class="">            
            <form action="" method="post" class="frmFiltrosUso" name="frmFiltrosUso" id="frmFiltrosUso">
                <input type="search" name="search" id="search"  placeholder="digite aqui sua busca" data-list=".list"><span class="fa fa-search" style="color:#ffffff;"></span>
            </form>
            </div>
        </div>
    </section>

    <section class="lista-projetos">
        <div class="container">
            <div class="row list">

                <%
                oListaArquivos.AbreTabela("select id,nome,foto from "&oListaArquivos.prefixoTabela&"projeto where ativo='s' AND regTerminado='s' order by id asc")                           
                while not oListaArquivos.rs.eof
                %>   

                <div class="col-xs-12 col-md-6 item">
                    <a href="sustentabilidade-interna.asp?id=<%=oListaArquivos.rs("id")%>">
                    <div class="row tabela">                        
                            <div class="col-xs-12 col-md-6 coluna">
                                <div>
                                    <img src="<%=oListaArquivos.enderecoProjetos%><%=oListaArquivos.rs("foto")%>" alt="<%=oListaArquivos.rs("nome")%>">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 coluna">
                                <aside>
                                    <h3><%=oListaArquivos.rs("nome")%></h3>
                                    <button>Conheça <span class="fa fa-angle-right"></span></button>
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
