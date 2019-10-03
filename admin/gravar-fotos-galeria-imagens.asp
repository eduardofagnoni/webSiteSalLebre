<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->

<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("ADM_logado")

Dim oConexaoAdd
Set oConexaoAdd = New Conexao
oConexaoAdd.AbreConexao() 

Dim oConexaoEdit
Set oConexaoEdit = New Conexao
oConexaoEdit.AbreConexao() 

Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

id = SafeSQL(request.querystring("id"))

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais

varRegistroIncluido = "s"
varRegistroTerminado = "s"
userId = session("ADM_id")

' preparando a data para gravacao
varDataProjeto = Date()
if varDataProjeto<>"" then
    varDataProjeto = replace(varDataProjeto,"/",".")
    varDataProjeto = replace(varDataProjeto,"-",".")
    varDataProjeto = split(varDataProjeto,".")
    dia=varDataProjeto(0)
    mes=varDataProjeto(1)
    ano=varDataProjeto(2)
    varDataProjeto = ano+"-"+mes+"-"+dia
end if

Set oPersists = New UploadPersists
        
oPersists.UploadDeArquivo(oConexaoEdit.upSalinas)

oConexaoAdd.AddItem("INSERT INTO "&oConexaoAdd.prefixoTabela&"salinas (foto, data, userIdSession, registroIncluido, regTerminado, ultimaAlteracao) values ('"&oPersists.txtArquivo&"','"&varDataProjeto&"','"&userId&"','"&varRegistroIncluido&"','"&varRegistroTerminado&"','"&ultima_alteracao&"')")

response.end()
%>