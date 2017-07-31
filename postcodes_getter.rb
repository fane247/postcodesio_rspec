require "httparty"
require "json"

class PostCodesio

	include HTTParty

	base_uri 'http://postcodes.io'

	def single_postcode(postcode)
		postcode_json = self.class.get("/postcodes/#{postcode}").body
		JSON.parse(postcode_json)
	end

	def mutiple_postcodes(postcode_array)
		postcodes_json = self.class.post('/postcodes', body: { "postcodes" => postcode_array }).body
		JSON.parse(postcodes_json)
	end



end


# postcode_getter = PostCodesio.new


# # puts postcode_getter.single_postcodes("EN93SD")

# puts postcode_getter.mutiple_postcodes(["UB81PD","EN93SD"])