class PostImagesController < ApplicationController
  def new
    @post_images = PostImage.new
  end
  
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def show
    @post_image = PostImage.find
  end

  def index
  end
  
  private
  
  
end
