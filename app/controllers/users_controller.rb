  class UsersController < ApplicationController
    
    def show
      @user = User.find(user_params)
      @post_images = @user.post_images
    end
  
    def edit
      @user = User.find(user_params)
    end
    
    private
   
    def user_params
      params.require(:user).permit(:name, :profile_image)
    end
  end
