require 'rubygems'
require 'httparty'

class Forms
  include HTTParty
  base_uri "https://www.formstack.com/api/v2/"


  def all_forms
	response = self.class.get('/form.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	puts response
	self.status(response)
  end

  def all_forms_no_token
    response = self.class.get('/form.json')
    puts response
    self.status(response)
  end

  def form_folders
  	response = self.class.get('/form.json?folders=1', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
  	puts response
  	self.status(response)
  end

  def invalidID
  	response = self.class.get('/form/0102.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
  	puts response
  	self.status(response)
  end

  def status(response)
  		case response.code
		  when 200
		    # puts "Response code: " + response.code
		    puts response.code
		  when 401
		  	# puts "Response code: " + response.code
		  	puts response.code
		  when 404
		    # puts "Response code: " + response.code
		    puts response.code
		  when 500...600
		    # puts "Response code: " + response.code
		    puts response.code
		end
  end
end

api = Forms.new

# puts api.all_forms
# puts api.form_folders
# puts api.all_forms_no_token

puts api.invalidID