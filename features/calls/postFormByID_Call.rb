require 'rubygems'
require 'httparty'

module PostFormsByID
	def self.postformByID
		api = CopyFormByID.new
		api.post_form_with_ID
	end	

	def self.postformByInvalidID()
		api = CopyFormByID.new
		api.post_invalid_id
	end

	def self.postformByIDnotexistent()
		api = CopyFormByID.new
		api.post_not_existent_id
	end

	def self.status(int)
		api = CopyFormByID.new
		api.status(int)
	end

end

class CopyFormByID
	include HTTParty

	base_uri "https://www.formstack.com/api/v2/"
  	
  	def post_form_with_ID
		self.class.post('/form/3547207/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def post_invalid_id
		self.class.post('/form/0102/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def post_not_existent_id
		self.class.post('/form/3547444/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def status(int)
		if int == 200
			response = self.class.get('/form/3547207/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
		elsif int == 404
			response = self.class.get('/form/0102.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
		end

		case response.code
		  when 200
		    puts response.code
		  when 401
		  	puts response.code
		  when 404
		    puts response.code
		  when 500...600
		    puts response.code
		end
	end
end