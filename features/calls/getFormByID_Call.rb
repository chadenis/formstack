require 'rubygems'
require 'httparty'

module GetFormsByID
	def self.formByID
		api = All_Forms.new
		api.form_with_ID
	end	

	def self.formByInvalidID()
		api = All_Forms.new
		api.invalid_id
	end

	def self.formByIDnotexistant()
		api = All_Forms.new
		api.not_existant_id
	end

end

class All_Forms
	include HTTParty

	base_uri "https://www.formstack.com/api/v2/"
  	
  	def form_with_ID
		self.class.get('/form/3547109.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def invalid_id
		self.class.get('/form/0102.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def not_existant_id
		self.class.get('/form/3547444.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

end