
<!-- Custom Theme Style -->        
<link rel="stylesheet" href="stylesheet/styleMsgSistem.css"> 

<%
	Function SafeSQLMsgSistema(sInput)
	  TempString = sInput	  
	  sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
	  For iCounter = 0 to uBound(sBadChars)
		TempString = replace(TempString,sBadChars(iCounter),"")
	  Next
	  SafeSQLMsgSistema = TempString
	End function
%>

<%
msgDoSistema = SafeSQLMsgSistema (request.QueryString("msg_sys"))
%>

<%
if msgDoSistema<>"" then

    Dim oConMensagens
    Set oConMensagens = New Conexao
    oConMensagens.AbreConexao()
    oConMensagens.AbreTabela("select * from "&oConMensagens.prefixoTabela&"mensagens_do_sistema where numero_msg="&msgDoSistema)
    mensagemDoSistema = oConMensagens.rs("mensagem")

    oConMensagens.rs.Close()
    set oConMensagens.rs = nothing
    oConMensagens.FechaConexao()

end if
%>



<!-- Modal mensagens do sistema-->
<div class="modal fade" id="modalMsgSistema" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Sal Lebre</h4>
        </div>
        <div class="modal-body">
        <p><%=mensagemDoSistema%></p>
        </div>
        <div class="modal-footer">

        <button type="button" class="btAzul" data-dismiss="modal" >Fechar</button>
        
                
        </div>
    </div>
    </div>
</div>


<%
    'oConMensagens.FechaConexao()
%>



<%
if msgDoSistema<>"" then
    response.write("<script type='text/javascript'>")
    response.write("$('#modalMsgSistema').modal();")
    response.write("</script>")
end if
%>

<!-- Botoneira -->
<script src="dist/js/botoneira.js"></script>