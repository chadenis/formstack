require 'rubygems'
require 'httparty'

module GetForms
	def self.all
		api = All_Forms.new
		api.all_forms
	end	

	def self.all_without_token()
		api = All_Forms.new
		api.all_no_token
	end

	def self.status(int)
		api = All_Forms.new
		api.status(int)
	end

	def self.all_params()
		api = All_Forms.new
		api.all_params
	end

	def self.valid_folder_page()
		api = All_Forms.new
		api.v_Folder_Page
	end

	def self.valid_folder_per_page()
		api = All_Forms.new
		api.v_folder_Per_Page
	end

	def self.valid_page_per_page
		api = All_Forms.new
		api.v_page_per_page
	end

	def self.invalid_params
		api = All_Forms.new
		api.in_params
	end

	def self.invalid_folders_page
		api = All_Forms.new
		api.in_folders_page
	end

	def self.invalid_folder_per_page
		api = All_Forms.new
		api.in_folder_per_page
	end

	def self.invalid_page_per_page
		api = All_Forms.new
		api.in_page_per_page
	end

end

class All_Forms
	include HTTParty

	base_uri "https://www.formstack.com/api/v2/"
  	
  	def all_forms
		self.class.get('/form.json', headers: { "Authorization" => "Bearer 8c44b2c4da5833c18ec6d9d2be922837" })
	end

	def all_no_token
		self.class.get('/form.json')
	end

	def all_params
		self.class.get('/form.json?folders=1&page=1&per_page=1')
	end

	def v_Folder_Page
		self.class.get('/form.json?folders=1&page=1')
	end

	def v_folder_Per_Page
		self.class.get('/form.json?folders=1&per_page=1')
	end

	def v_page_per_page
		self.class.get('/form.json?page=1&per_page=1')
	end

	def in_params
		self.class.get('/form.json?folders=a&page=b&per_page=c')
	end

	def in_folders_page
		self.class.get('/form.json?folders=a&page=b')
	end

	def in_folder_per_page
		self.class.get('/form.json?folders=a&per_page=c')
	end

	def in_page_per_page
		self.class.get('/form.json?page=b&per_page=c')
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