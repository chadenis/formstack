require 'rubygems'
require 'httparty'

module GetForms
	def self.all
		api = All_Forms.new
		puts api.all_forms
	end	

	def self.status()
		api = All_Forms.new
		puts api.all_status
	end

end

class All_Forms
	include HTTParty
	base_uri "https://www.formstack.com/api/v2/"
  	
  	def all_forms
		self.class.get('/form.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def all_status
		response = self.class.get('/form.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
		case response.code
		  when 200
		    puts "All good!"
		  when 404
		    puts "O noes not found!"
		  when 500...600
		    puts "ZOMG ERROR #{response.code}"
		end
	end

end