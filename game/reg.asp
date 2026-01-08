<html>

<head>
<title>Code Finder</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

<div class="MainContainer">
<h1>Code<br />Finder</h1>

<form type="get" action="?">
<input class="LeftIcon Circle" name="key1" type="text" value="<%= request.querystring("key1") %>" placeholder="Code">
<input class="LeftIcon Triangle" name="key2" type="text" value="<%= request.querystring("key2") %>" placeholder="Code">
<input class="LeftIcon Equal" name="key3" type="text" value="<%= request.querystring("key3") %>" placeholder="Code">
<input class="LeftIcon Square" name="key4" type="text" value="<%= request.querystring("key4") %>" placeholder="Code">
<input type="submit" value="Enter">
</form>

<%
key1 = trim(request.querystring("key1"))
key2 = trim(request.querystring("key2"))
key3 = trim(request.querystring("key3"))
key4 = trim(request.querystring("key4"))

if key1 = "673" AND key2 = "24" AND key3 = "107" AND key4 = "125" then 
    answer = "Code found<br /><br />" &_
    "Box code = 1005"
    answer_color = "#2ad18a"
elseif key1 = "" AND key2 = "" AND key3 = "" AND key4 = "" then 
    answer = ""
    answer_color = "transparent"
else
    answer = "No code found"
    answer_color = "#ff5a5a"
end if 
%>

<div style="padding: 20px; border-radius: 4px; text-align: center; margin-top: 40px; background-color: <%= answer_color %>; color: white;">
<%= answer %>
</div>
</div>

</body>

</html>