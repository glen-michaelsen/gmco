<%
use_redirect = False

'###
'# Domain
redirect_domain = "gmco.dk" 

'###
'# Page
redirect_page = page_url

select case page_url

    '# GGS

	case "/ggs/simon"
        redirect_page = "https://glenmichaelsen.notion.site/4ef74120a13946ef845e4dc331ea95bf?v=a442481f7f8d4b8088509e92f731fad8"

    case "/ggs/carina"
        redirect_page = "https://glenmichaelsen.notion.site/592e9761587146a5b193dcdeaabd8bbe?v=9cd5751f346e44e096ccf7cb41e81ca0"

    case "/ggs/karin"
        redirect_page = "https://glenmichaelsen.notion.site/8eb563ad0a034a738b41cc6dd9a35f18?v=f3464384b2a5409bb57b1e22cb5f77b8"

    case "/ggs/molly"
        redirect_page = "https://glenmichaelsen.notion.site/086cec7af8484adeae315596e41f6607?v=fa7cbef09a9447c19591147018a3bcad"


    '# MEDIUM
    case "/blog/saadan-udgiver-du-din-musik-paa-spotify-itunes-amazon-etc/"
        redirect_page = "https://medium.com/musikken-i-fokus/guide-udgiv-musik-online-p%C3%A5-tjenester-som-spotify-apple-music-deezer-og-tidal-84ce31d7d35c"
    
    case "/blog/saadan-skal-den-perfekte-seo-tekst-skaeres/"
        redirect_page = "https://medium.com/@glenmichaelsen/s%C3%A5dan-skal-den-perfekte-seo-tekst-sk%C3%A6res-fd1465368cdb"

    case "/blog/guide-til-sangskrivning-saadan-skriver-du-en-sang/"
        redirect_page = "https://medium.com/@glenmichaelsen/guide-til-sangskrivning-s%C3%A5dan-skriver-du-din-egen-sang-a0ef80be48b0"
    
    case "/blog/det-store-seo-bluf-den-tekniske-analyse-af-jeres-hjemmeside/"
        redirect_page = "https://medium.com/@glenmichaelsen/det-store-seo-bluf-den-tekniske-analyse-af-jeres-hjemmeside-9e51a1b450d6"

end select



if (redirect_domain <> Request.ServerVariables("SERVER_NAME")) OR (redirect_page <> page_url) OR Request.ServerVariables("SERVER_PORT_SECURE") = 0 then
	use_redirect = True
end if

if use_redirect = True then
	if inStr(redirect_page,"http://") > 0 OR inStr(redirect_page,"https://") > 0 then
		Response.Status = "301 Moved Permanently"
		Response.AddHeader "Location", redirect_page
		Response.End		
	else
		Response.Status = "301 Moved Permanently"
		Response.AddHeader "Location", "https://" & redirect_domain & redirect_page
		Response.End
	end if
	
end if
%>