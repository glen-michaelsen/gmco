<html>

<head>
<title>Decoding Machine</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<div class="MainContainer">
<h1>Decoding Machine</h1>

<form type="get" action="?">
<textarea name="key" placeholder="Type in URL ..." style=""><%= request.querystring("key") %></textarea>
<input type="submit" value="Decode">
</form>

<%
if trim(request.querystring("key")) <> "" then 
    temp = lcase(request.querystring("key"))
    temp = replace(temp,"a","##")
    temp = replace(temp,"b","a")
    temp = replace(temp,"c","b")
    temp = replace(temp,"d","c")
    temp = replace(temp,"e","d")
    temp = replace(temp,"f","e")
    temp = replace(temp,"g","f")
    temp = replace(temp,"h","g")
    temp = replace(temp,"i","h")
    temp = replace(temp,"j","i")
    temp = replace(temp,"k","j")
    temp = replace(temp,"l","k")
    temp = replace(temp,"m","l")
    temp = replace(temp,"n","m")
    temp = replace(temp,"o","n")
    temp = replace(temp,"p","o")
    temp = replace(temp,"q","p")
    temp = replace(temp,"r","q")
    temp = replace(temp,"s","r")
    temp = replace(temp,"t","s")
    temp = replace(temp,"u","t")
    temp = replace(temp,"v","u")
    temp = replace(temp,"w","v")
    temp = replace(temp,"x","w")
    temp = replace(temp,"y","x")
    temp = replace(temp,"z","y")
    temp = replace(temp,"æ","z")
    temp = replace(temp,"ø","æ")
    temp = replace(temp,"å","ø")
    temp = replace(temp,"##","å")
    %>

<div class="Box BreakWord Green">
<%= temp %>
</div>
<% end if %>
</div>

</body>

</html>