<!-- #include file="_classes/__cl__conexao.asp" -->
<!-- #include file="_classes.asp" -->

<%
idDaGaleria = request.querystring("id")
montaObjeto(idDaGaleria)
%>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title></title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />        
        
		<!-- Bootstrap -->
		<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">	
		<!-- jQuery -->
		<script src="vendors/jquery/dist/jquery.min.js"></script>	



        <script type="text/javascript">
            window.onload = function(){
                parent.document.getElementById("ID<%=idDaGaleria%>").height = document.getElementById("CID<%=idDaGaleria%>").scrollHeight + 35;
            }
        </script>		

	</head>

    <body id="CID<%=idDaGaleria%>">        

        <!-- Bootstrap -->
		<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script>
        $('.carousel').carousel({
            interval: 2000
        })

        </script>


    </body>
</html>