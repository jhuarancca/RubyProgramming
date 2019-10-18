require 'httparty'
require 'pp'

class Recipe
	include HTTParty
	
	ENV['FOOD2FORK_KEY'] = 'ad351427dd51f08b628347619e5237fa'
	ENV['FOOD2FORK_SERVER_AND_PORT']='www.food2fork.com'

	key=ENV['FOOD2FORK_KEY']
	uri=ENV['FOOD2FORK_SERVER_AND_PORT']

	base_uri "https://#{uri}/api/search"
	default_params key: key
		format :json

	def self.for term
		get("", query:{q:term})["recipes"]
	end

end

