class ExtraController < ApplicationController
  layout :define_layout
	
  def index
  end
  
  def home
  	redirect_to root_url(subdomain: false), status: 301
  end
  
  def api
  end

  def forbidden
    render status: :forbidden
  end

  def systemCheck
    # TODO Perform actual system self dignostics, respond wtih OK and time taken to perform.
    # Send message to admins, if tests fail and to why they did.
    render xml: {status: 'OK', response_time: '96.777'}.to_xml(root: 'pingdom_http_custom_check')
  end

  private
    def define_layout
      if params[:action] == "index"
        "index"
      else
        "default"
      end
    end
end