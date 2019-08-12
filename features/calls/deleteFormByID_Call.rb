require 'rubygems'
require 'httparty'


module DeleteFormByID

	def self.deleteformByID
		api = DelFormByID.new
		api.delete_form_with_ID
	end	

	def self.deleteformByInvalidID()
		api = DelFormByID.new
		api.delete_invalid_id
	end

	def self.deleteformByIDnotexistent()
		api = DelFormByID.new
		api.delete_not_existent_id
	end

	def self.status_delete(int)
		api = DelFormByID.new
		api.status_del(int)
	end

end

class DelFormByID
	include HTTParty

	base_uri "https://www.formstack.com/api/v2/"
  	
  	def delete_form_with_ID
		self.class.delete('/form/3548496/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def delete_invalid_id
		self.class.delete('/form/0102/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def delete_not_existent_id
		self.class.delete('/form/3547444/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def status_del(int)
		if int == 200
			response = self.class.delete('/form/3548304/copy.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
		elsif int == 404
			response = self.class.delete('/form/0102.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
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

		if int == response.code
			puts "Test Passed"
		else
			puts "Test Failed"
		end
	end	
end