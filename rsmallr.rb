require 'rubygems'
require 'net/http'
require 'json/pure'

url = 'http://www.google.pt/search?q=json+ruby'
escaped_url = URI.escape(url, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
call = Net::HTTP.get_response(URI.parse("http://smallr.net/json/?url=#{escaped_url}"))
res = JSON.parse(call.body)

puts res['status']
puts res['url']
