<%
id = request.querystring("id")


Select Case id
    Case 1
        video = "fxdpzkm9IpY"
    Case 2
        video = "FtdfX3R942A"
	Case 3
        video = "TB7Kr0kBw0g"
    Case else
        video = ""      
End Select


linkDoVideo_utmVideo    = "https://www.youtube.com/embed/"&video&"?enablejsapi=1&rel=0&autoplay=1&fs=0&controls=2"

%>

<!DOCTYPE html>
<html>
<head>

	<meta name='robots' content='noindex, nofollow'>
	<title></title>

<style type="text/css">

	html,
	body {
		width: 100%!important;
		height: 100%!important;
		margin: 0!important;
		padding: 0!important;
		min-width: 100%;
		min-height: 100%;
		width: auto;
		height: auto;
	}
	iframe {
		position: fixed;
		right: 0;
		bottom: 0;
		min-width: 100%;
		min-height: 100%;
		width: auto;
		height: auto;		
		background-size: cover;
	}
	



</style>

</head>
<body>

<iframe width="420" height="315" src="<%=linkDoVideo_utmVideo%>" frameborder="0" allowfullscreen></iframe>


</body>
</html>