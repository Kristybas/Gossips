class AuthorsController < ApplicationController
  def index
  end
  def login
  @author = Author.find_by(email: params[:email])
  if @author && @author.authenticate(params[:password])
    session[:user_id] = @author.id
    redirect_to root_path, notice: "vous êtes connecté !"
  else
    flash.now.alert = "Adresse e-mail ou mot de passe invalide."
    render :new
  end  
  
  def author_params
  params.require(:user).permit(:email, :password, :password_confirmation)
end


  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
