class ExtraController < ApplicationController
	layout "index", only: :index 
	layout "default", except: :index
	
  def index
  end
  
  def home
  	redirect_to root_url(subdomain: false), status: 301
  end
  
  def api
  end
end
