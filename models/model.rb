
url = 'https://us.jooble.org/api/'
key = '9428911e-d856-4934-877c-3a0830441a1c'
#create uri for request
uri = URI.parse(url + key)
#prepare post data
post_args = {
	'content' => "{ keywords: 'it', location: 'Bern'}"
}
#send request to the server
resp, data = Net::HTTP.post_form(uri, post_args)
