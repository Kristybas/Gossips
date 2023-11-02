class MessageController < ApplicationController
def show
end
#permet d'afficher le nom de l'utilisateur dans les params avec un message d'acceuil de bonjour put le name
def index @user_name = params[:user_name]
end
