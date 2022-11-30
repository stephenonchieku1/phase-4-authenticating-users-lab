class UsersController < ApplicationController
def show 
user=User.find(session[:id])
render json: user
end   
end
