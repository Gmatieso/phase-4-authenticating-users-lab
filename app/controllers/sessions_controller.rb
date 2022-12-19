class SessionsController < ApplicationController
    #making a SessionController#create method
    def create 
        #Find a user in the database using the username from params 
        user = User.find_by(username: params[:username])
        #Save the user's ID to the  session hash 
        session[:user_id] = user.id
        #Return the user as a JSON object 
        render json: user
    end 

    #making a SessionsController#destroy method 
    def destroy
        #find a user in the databse using the username from params 
        user = User.find_by(id: session[:user_id])
        #return an empty response with a 204 No Content Status code 
        session.delete :user_id
        head :no_content 

    end


end
