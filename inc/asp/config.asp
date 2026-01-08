<%
page_url = Request.ServerVariables("HTTP_X_ORIGINAL_URL")

if instr(page_url,"?") > 0 then
	page_url = split(page_url,"?")(0)
end if 
%>