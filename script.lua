http = require('socket.http')
https = require('ssl.https')
url = require('socket.url')
json = require('dkjson')

login = ""
apiKey = ""

function bitly(link)
url = 'http://api.bit.ly/v3/shorten?longUrl='..url.escape(link)..'&login='..login..'&apiKey='..apiKey
request = http.request(url)
res = json.decode(request)
if not res.data.url then 
	return 'Un error ha ocurrido ('..res.status_txt..')'
end
return res.data.url
end


myUrl = "https://lua.org/"
print("Link generated\n"..bitly(myUrl))
