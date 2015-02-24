require 'zendesk_api'

class HomeController < ApplicationController

  def advocates
  
  end

  def index

  	@message=""

  	if params.has_key?(:email)

  		@email = params[:email]

  		client = ZendeskAPI::Client.new do |config|
		  # Mandatory:

		  config.url = "https://verahealth.zendesk.com/api/v2" # e.g. https://mydesk.zendesk.com/api/v2

		  # Basic / Token Authentication
		  config.username = "andrew@veraapp.com"

		  # Choose one of the following depending on your authentication choice
		  config.token = "egjyRiCOTOqDbFt4EdsQUBSeoN4Zz5WVxXahmqeD"
		  config.password = "Vera1234!"

		  # OAuth Authentication
		  # config.access_token = "your OAuth access token"

		  # Optional:

		  # Retry uses middleware to notify the user
		  # when hitting the rate limit, sleep automatically,
		  # then retry the request.
		  config.retry = true

		  # Logger prints to STDERR by default, to e.g. print to stdout:
		  require 'logger'
		  config.logger = Logger.new(STDOUT)

			end

			@ticket = client.tickets.create(:subject => "New Web Signup", :comment => { :value => "New Signup from the Website from " + @email }, :submitter_id => client.current_user.id, :priority => "urgent")
			
			puts @ticket

			@message = "Thanks for applying for a free medical bill review. Our advocates will reach out to you at "+ @email+" shortly."

  	end

  end

end

  def resource_name
	  :user
	end

	def resource
	  @resource ||= User.new
	end

	def devise_mapping
	  @devise_mapping ||= Devise.mappings[:user]
	end