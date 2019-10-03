<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<!-- #include file="_limpa-base-de-dados.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("ADM_logado")


'*********************************************
'****  pega nome do usuário logado
'*********************************************
Dim oUsuario
Set oUsuario = New Conexao
oUsuario.AbreConexao()
oUsuario.AbreTabela("select id,nome,dataCadastro from "&oUsuario.prefixoTabela&"usuarios where id="&session("ADM_id")&" limit 1 ")
nomeDoUsuario = oUsuario.rs("nome")
dataCadastro = oUsuario.rs("dataCadastro")
'*********************************************
'*********************************************

Dim oListaTipoDaReceita
Set oListaTipoDaReceita = New Conexao
oListaTipoDaReceita.AbreConexao()
oListaTipoDaReceita.AbreTabela("select id,nome,data from "&oListaTipoDaReceita.prefixoTabela&"categoria_da_receita where ativo='s' AND regTerminado='s' order by nome asc")

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
        <!-- DataTables -->
        <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
		
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/AdminLTE.css">		
		<link rel="stylesheet" href="dist/css/skins/skin-black.css">
		
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
                <h1>Tipos de receitas <small></small></h1>
                <ol class="breadcrumb">
                    <li><a href="admin.asp"><i class="fa fa-home"></i> Home</a></li>
                    <li class="active">Tipos de receitas</li>
                </ol>
            </section>
            
            <section class="content container-fluid">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Tipos de receitas</h3>

                        <div style="float:right;">
                            <a href="add-tipo-da-receita.asp" class="btnExtBt btAzul" style="display:block">                                    
                                <div class="bg2"><img src="images/btGeralBr.png" alt=""></div>
                                Incluir novo
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Data de inclusão</th>
                                    <th width="90"></th>
                                    <!--<th width="90"></th>-->
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                while not oListaTipoDaReceita.rs.eof                                     
                                %>
                                <tr>
                                    <td><%=oListaTipoDaReceita.rs("nome")%></td>
                                    <td><%=oListaTipoDaReceita.rs("data")%></td>
                                    <td><a href="add-tipo-da-receita.asp?regIni=s&id=<%=oListaTipoDaReceita.rs("id")%>" class="btn btn-block btn-primary">Editar</a></td>
                                    <!--<td><a href="deleta-tipo-da-receita.asp?id=<%=oListaTipoDaReceita.rs("id")%>" class="btn btn-block btn-warning">Excluir</a></td>-->
                                </tr>
                                <%
                                oListaTipoDaReceita.rs.MoveNext()
                                wend
                                oListaTipoDaReceita.rs.Close()
                                set oListaTipoDaReceita.rs = nothing
                                %>                       
                            </tbody>                        
                        </table>
                    </div>
                    
                </div>

            </section>
            
        </div>
        


        <!-- Main Footer -->
        <!--#include file="_footer.asp"-->

        <!-- Control Sidebar -->
        <!--#include file="_sidebar.asp"-->




        <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->


<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- DataTables -->
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>

<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- page script -->
<script>
  $(function () {
    $('#example1').DataTable()
    
  })
</script>





<!-- #include file="_mensagens_do_sistema.asp" -->

</body>
</html>