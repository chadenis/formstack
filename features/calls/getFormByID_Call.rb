require 'rubygems'
require 'httparty'

module GetFormsByID
	def self.formByID
		api = FormByID.new
		api.form_with_ID
	end	

	def self.formByInvalidID()
		api = FormByID.new
		api.invalid_id
	end

	def self.formByIDnotexistent()
		api = FormByID.new
		api.not_existent_id
	end

	def self.status(int)
		api = FormByID.new
		api.status(int)
	end

end

class FormByID
	include HTTParty

	base_uri "https://www.formstack.com/api/v2/"
  	
  	def form_with_ID
		self.class.get('/form/3547109.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def invalid_id
		self.class.get('/form/0102.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def not_existent_id
		self.class.get('/form/3547444.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def status(int)
		if int == 200
			response = self.class.get('/form.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
		elsif int == 401
			response = self.class.get('/form.json')
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