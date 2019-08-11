require 'rubygems'
require 'httparty'

class Forms
  include HTTParty
  base_uri "https://www.formstack.com/api/v2/"


  def all_forms
    self.class.get('/form.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
  end

  def form_folders
  	self.class.get('/form.json?folders=1', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
  end
end

api = Forms.new

puts api.all_forms
puts ''
puts api.form_folders