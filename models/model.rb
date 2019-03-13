require 'net/http'
url = 'https://us.jooble.org/api/'
key = EVI("Id")
#create uri for request
uri = URI.parse(url + key)
#prepare post data
post_args = {
	'content' => "{ keywords: 'location', location: 'Bern'}"
}
#send request to the server
resp, data = Net::HTTP.post_form(uri, post_args)
