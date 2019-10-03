<%

qualFormulario = request.form("txtFormulario")

if qualFormulario="1" then
response.redirect("contato-sac.asp")
elseif qualFormulario="2" then
response.redirect("contato-revendedor.asp")
elseif qualFormulario="3" then
response.redirect("contato.asp")
else
response.redirect("default.asp")
end if

%>