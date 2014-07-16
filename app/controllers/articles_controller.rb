class ArticlesController < ApplicationController
	layout "default", only: "dashboard"

	def dashboard
		@posts = Post.all
		respond_to do |format|
			format.html
			format.json { render json: @posts }
			#format.xml { render xml: @posts }
		end
	end

	def ajax
		@posts = Post.all
	end

	private
		def define_layout
			if params[:action] == "dashboard"
				"default"
			else
				false
			end
		end
end