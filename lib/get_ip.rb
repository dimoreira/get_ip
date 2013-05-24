require "get_ip/version"
require 'json'
require 'net/http'

module GetIp
	JSON_IP_URL = "http://jsonip.com"

	def self.local
		`ifconfig  | grep -E 'inet.[0-9]' | grep -v '127.0.0.1' | awk '{ printf $2 }'`
	end

	def self.remote
		resp = Net::HTTP.get_response(URI.parse(JSON_IP_URL))
		data = resp.body
		result = JSON.parse(data)
		result["ip"]
	end

end
