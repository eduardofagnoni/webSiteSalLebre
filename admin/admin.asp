<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("ADM_logado")

Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

Dim oUsuario
Set oUsuario = New Conexao
oUsuario.AbreConexao()
oUsuario.AbreTabela("select id,nome,dataCadastro from "&oUsuario.prefixoTabela&"usuarios where id="&session("ADM_id")&" limit 1 ")

nomeDoUsuario = oUsuario.rs("nome")
dataCadastro = oUsuario.rs("dataCadastro")

Dim oComContaItens
Set oComContaItens = New Conexao
oComContaItens.AbreConexao()

%>
<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">

        <!-- Fav and touch icons -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <meta name="application-name" content=""/>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="../assets/ico/favicon.png">
		
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/AdminLTE.css">
		<link rel="stylesheet" href="dist/css/skins/skin-black.css">

        <!-- Custom Theme Style -->
        <link rel="stylesheet" href="stylesheet/styles.css">
		
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	</head>

<body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">

        <!-- Main Header -->
        <!--#include file="_header.asp"-->

        <!-- Left side column. contains the logo and sidebar -->
        <!--#include file="_menu.asp" -->
        
        <div class="content-wrapper">
            
            <section class="content-header">

<%
oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"projeto WHERE ativo='s' and regTerminado='s'")
totalDeProjeto = oComContaItens.resultadoContaItem

oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"produto WHERE ativo='s' and regTerminado='s'")
totalProduto = oComContaItens.resultadoContaItem

oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"receitas WHERE ativo='s' and regTerminado='s'")
totalReceitas = oComContaItens.resultadoContaItem

oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"salinas WHERE ativo='s'")
totalSalinas = oComContaItens.resultadoContaItem

oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"tipo_de_sal WHERE ativo='s' and regTerminado='s'")
totalTipoDeSal = oComContaItens.resultadoContaItem

oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"uso_do_sal WHERE ativo='s' and regTerminado='s'")
totalUsoDoSal = oComContaItens.resultadoContaItem

'conta contatos:

'1-Dúvidas
'2-Críticas e sugestões
'3-Seja nosso cliente
'4-Fornecedores



'recupera dados dos filtros
varMesFiltro = SafeSQL(request.form("txtMes"))
varAnoFiltro = SafeSQL(request.form("txtAno"))

if varMesFiltro<>"" and varAnoFiltro="" then
    varAnoFiltro = year(now)
end if

if varMesFiltro<>"" and varAnoFiltro<>"" then 'selecionado o mes e o ano

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=1 AND YEAR(data)="&varAnoFiltro&" AND MONTH(data)="&varMesFiltro&" ")
    'totalContatosDuvidas = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=2 AND YEAR(data)="&varAnoFiltro&" AND MONTH(data)="&varMesFiltro&" ")
    'totalContatosCriticas = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=3 AND YEAR(data)="&varAnoFiltro&" AND MONTH(data)="&varMesFiltro&" ")
    'totalContatosClientes = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=4 AND YEAR(data)="&varAnoFiltro&" AND MONTH(data)="&varMesFiltro&" ")
    'totalContatosFornecedores = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=5 AND YEAR(data)="&varAnoFiltro&" AND MONTH(data)="&varMesFiltro&" ")
    'totalContatosNews = oComContaItens.resultadoContaItem

    'se o filtro estiver selecionado, escrever o período
    select case varMesFiltro
        case 01
            varNomeDoMes = "Janeiro"
        case 02
            varNomeDoMes = "Fevereiro"
        case 03
            varNomeDoMes = "Março"
        case 04
            varNomeDoMes = "Abril"
        case 05
            varNomeDoMes = "Maio"
        case 06
            varNomeDoMes = "Junho"
        case 07
            varNomeDoMes = "Julho"
        case 08
            varNomeDoMes = "Agosto"
        case 09
            varNomeDoMes = "Setembro"
        case 10
            varNomeDoMes = "Outubro"
        case 11
            varNomeDoMes = "Novembro"
        case 12
            varNomeDoMes = "Dezembro"
        case else
            varNomeDoMes = "Mês incorreto!"
    end select


    varPeriodoDoFiltro = " - <span style='color:#E95E4F'>Resultado no período de "&varNomeDoMes&" de "&varAnoFiltro&"</span>"

elseif  varMesFiltro="" and varAnoFiltro<>"" then 'selecionado o ano

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=1 AND YEAR(data)="&varAnoFiltro&" ")
    'totalContatosDuvidas = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=2 AND YEAR(data)="&varAnoFiltro&"")
    'totalContatosCriticas = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=3 AND YEAR(data)="&varAnoFiltro&"")
    'totalContatosClientes = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=4 AND YEAR(data)="&varAnoFiltro&"")
    'totalContatosFornecedores = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=5 AND YEAR(data)="&varAnoFiltro&"")
    'totalContatosNews = oComContaItens.resultadoContaItem

    'varPeriodoDoFiltro = " - <span style='color:#E95E4F'>Resultado no período de "&varAnoFiltro&"</span>"

else 'mostra todos os resultados, independente de mes e ano.

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=1")
    'totalContatosDuvidas = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=2")
    'totalContatosCriticas = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=3")
    'totalContatosClientes = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=4")
    'totalContatosFornecedores = oComContaItens.resultadoContaItem

    'oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"contatos WHERE assunto=5")
    'totalContatosNews = oComContaItens.resultadoContaItem

end if
%>


                <div class="row">
                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3><%=totalDeProjeto%></h3>

                                <p>Projetos</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-line-chart"></i>
                            </div>
                            <a href="lista-projetos.asp" class="small-box-footer">
                            Mais informações <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3><%=totalProduto%></h3>

                                <p>Produtos</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-newspaper-o"></i>
                            </div>
                            <a href="lista-produto.asp" class="small-box-footer">
                            Mais informações <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-light-blue">
                            <div class="inner">
                                <h3><%=totalReceitas%></h3>

                                <p>Receitas</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-star"></i>
                            </div>
                            <a href="lista-receita.asp" class="small-box-footer">
                            Mais informações <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3><%=totalSalinas%></h3>

                                <p>Fotos</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-picture-o"></i>
                            </div>
                            <a href="lista-galeria-imagens.asp" class="small-box-footer">
                            Mais informações <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-teal">
                            <div class="inner">
                                <h3><%=totalTipoDeSal%></h3>

                                <p>Tipo de Sal</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-users"></i>
                            </div>
                            <a href="lista-tipo-do-sal.asp" class="small-box-footer">
                            Mais informações <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-4 col-xs-12">
                        <!-- small box -->
                        <div class="small-box bg-purple">
                            <div class="inner">
                                <h3><%=totalUsoDoSal%></h3>

                                <p>Uso do Sal</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-share-alt"></i>
                            </div>
                            <a href="lista-uso-do-sal.asp" class="small-box-footer">
                            Mais informações <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>
                </div>



                



                

            </section>
            
            <section class="content container-fluid">

                


                <!--
                <div class="row">
                    <div class="col-xs-12">
                        <p class="text-center">
                        <strong>Escrever o período que está sendo mostrado</strong>
                        </p>

                        <div class="chart">                        
                            <canvas id="salesChart" style="height: 180px;"></canvas>
                        </div>                        
                    </div>
                </div>
                -->


            </section>
            
        </div>
        


        <!-- Main Footer -->
        <!--#include file="_footer.asp"-->

        <!-- Control Sidebar -->
        <!-- include file="_sidebar.asp"-->




        <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->



<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>



<!-- Validação de campos -->
<script src="vendors/js/mascaras.js"></script>


<!-- ChartJS -->
<script src="bower_components/chart.js/Chart.js"></script>


<script>

varDuvidas=<%=totalContatosDuvidas%>
varCriticas=<%=totalContatosCriticas%>
varClientes=<%=totalContatosClientes%>
varFornecedores=<%=totalContatosFornecedores%>
varNewsletter=<%=totalContatosNews%>

</script>


<script src="chart-cadastros.js"></script>






<!-- ChartJS -->
<!-- <script src="bower_components/chart.js/Chart.js"></script> -->
<!-- gráfico -->
<!-- <script src="dashboard.js"></script> -->


</body>
</html>