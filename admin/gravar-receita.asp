<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("ADM_logado")

Dim oConexaoAdd
Set oConexaoAdd = New Conexao
oConexaoAdd.AbreConexao()

Dim oConexaoDelete
Set oConexaoDelete = New Conexao
oConexaoDelete.AbreConexao() 

Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

Function SafeSQL_HTML(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", "--", "insert", "delete", "xp_") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL_HTML = TempString
End function

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais

'varíaveis do formulário
varTipoReceita = SafeSQL(request.form("txtTipoReceita"))
varNome = SafeSQL_HTML(request.form("txtNome"))
varResumo = SafeSQL_HTML(request.form("txtResumo"))
varTexto = SafeSQL_HTML(request.form("txtTexto"))
varIngredientes = SafeSQL_HTML(request.form("txtIngredientes"))
varTitle = SafeSQL_HTML(request.form("txtSeoTitle"))
varDescription = SafeSQL_HTML(request.form("txtSeoDescription"))
varKeyword = SafeSQL_HTML(request.form("txtSeoKeyword"))
varRegistroIncluido = "s"
varRegistroTerminado = "s"
varIdProjeto = SafeSQL(request.form("idProjeto"))

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

'adiciona o registro
oConexaoAdd.UpdateItem("UPDATE "&oConexaoAdd.prefixoTabela&"receitas SET idCategoria='"&varTipoReceita&"',nome='"&varNome&"',resumo='"&varResumo&"',texto='"&varTexto&"',ingredientes='"&varIngredientes&"',data='"&varDataProjeto&"',seo_title='"&varTitle&"',seo_description='"&varDescription&"',seo_keyword='"&varKeyword&"',registroIncluido='"&varRegistroIncluido&"',regTerminado='"&varRegistroTerminado&"',ultimaAlteracao='"&ultima_alteracao&"' WHERE id="&varIdProjeto)





'*******************************************************************
'verifica se o projeto existe na tabela de relacionamento
'se existir o sistema apaga todos os registros da tabela
'*******************************************************************
Set oConexaoRelacionamento = New Conexao
oConexaoRelacionamento.AbreConexao()
oConexaoRelacionamento.AbreTabela("select id from "&oConexaoRelacionamento.prefixoTabela&"relacionamento where idReceita="&varIdProjeto)

if oConexaoRelacionamento.rs.eof=false then

    oConexaoDelete.UpdateItem("DELETE FROM "&oConexaoRelacionamento.prefixoTabela&"relacionamento WHERE idReceita="&varIdProjeto)

end if
oConexaoRelacionamento.rs.Close()
set oConexaoRelacionamento.rs = nothing
'*******************************************************************
'verifica se o projeto existe na tabela de relacionamento
'se existir o sistema apaga todos os registros da tabela
'*******************************************************************


'******************************************************
'REFAZ A INSERÇÃO DOS ITENS, MESMO QUE NÃO TENHAM 
'SOFRIDO NENHUMA ALTERAÇÃO
'******************************************************


'********************************************************
'recupera o último registro de receitas
'********************************************************
Set oConexaoUltimoProjeto = New Conexao
oConexaoUltimoProjeto.AbreConexao()
oConexaoUltimoProjeto.AbreTabela("select id from "&oConexaoUltimoProjeto.prefixoTabela&"receitas where ativo='s' AND userIdSession="&session("ADM_id"))
idUltimoProjeto=oConexaoUltimoProjeto.rs("id")
oConexaoUltimoProjeto.rs.Close()
set oConexaoUltimoProjeto.rs = nothing
'********************************************************
'recupera o último registro de receitas
'********************************************************


'**************************************************************
'inclui os produtos marcados, na tabela de ralacionamento
'**************************************************************
Set oConexaoCursos = New Conexao
oConexaoCursos.AbreConexao()
oConexaoCursos.AbreTabela("select id,nome from "&oConexaoCursos.prefixoTabela&"produto where ativo='s' AND regTerminado='s' order by nome asc ")

contadorDeVoltas = 1

while not oConexaoCursos.rs.eof
    varDistribuidor = request.Form("dist"&contadorDeVoltas)
    if varDistribuidor<>"" then
        oConexaoAdd.AddItem("INSERT INTO "&oConexaoAdd.prefixoTabela&"relacionamento (idReceita, idProduto) values ('"&varIdProjeto&"','"&varDistribuidor&"')")
    end if
oConexaoCursos.rs.MoveNext()
contadorDeVoltas=contadorDeVoltas+1
wend
oConexaoCursos.rs.Close()
set oConexaoCursos.rs = nothing
'**************************************************************
'inclui os distribuidores marcados na tabela de ralacionamento
'**************************************************************





response.redirect("lista-receita.asp?msg_sys=42")
%>