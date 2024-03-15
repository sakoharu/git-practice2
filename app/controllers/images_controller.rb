class ImagesController < ApplicationController
  def new
    @image = Image.new
  end
  
  def create
    @image = Image.new(image_params)
    @image.user_id = current_user.id
    @image.save
    redirect_to images_path
  end

  def index
  end

  def show
  end
  
  private
  
  def image_params
    params.require(:params_image).permitz(:shop_name, :image, :caption)
  end
    
end
