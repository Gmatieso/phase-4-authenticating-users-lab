class UsersController < ApplicationController
    #creating our show method 
    def show
        #Find a user in the database using the user id from the session hash 
        user = User.find_by(id: session[:user_id])
        #returning the JSON as object 
        render json: user

    end

end
