class Admins::BabyImagesController < ApplicationController

  def index
    @baby_images = BabyImage.all.order(created_at: "DESC")
  end

  def show
    @baby_image = BabyImage.find(params[:id])
    @baby_image_comment = BabyImageComment.new
  end

  def destroy
    @baby_image = BabyImage.find(params[:id])
    @baby_image.destroy
    redirect_to admins_baby_images_path
  end
end