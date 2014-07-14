class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  
  def create
  	@user = User.new(params.required(:user).permit(:name, :email, :password, :password_configuration))
  	if @user.save
  		redirect_to @user, notice: 'User was successfully created.'
  	else
  		render action: "new"
  	end
  end
  
  def show
  	@user = User.find(params[:id])
  	respond_to do |format|
  		format.html
  		format.json { render json: @user }
  		format.xml { render xml: @user }
  	end
  end
  
  def index
  	@users = User.all
  end

	def login
	end
end
