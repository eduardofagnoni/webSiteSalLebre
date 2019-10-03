<%
Dim oConexaoDel
Set oConexaoDel = New Conexao
oConexaoDel.AbreConexao() 

'Limpa cadastros que foram iniciados, e por qquer motivo não foram salvos ou foram cancelados.
'Os cadastros só são deletados quando a tela de listagem for acessada pelo mesmo usuário que criou o registro.
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"tipo_de_sal WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"uso_do_sal WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"produto WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"categoria_da_receita WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"receitas WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"projeto WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"salinas WHERE registroIncluido='n' AND userIdSession="&session("ADM_id"))
set oConexaoDel.rs = nothing
%>