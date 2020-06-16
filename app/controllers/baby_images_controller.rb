class BabyImagesController < ApplicationController
  def index
    @baby_images = BabyImage.all.order(created_at: "DESC")
  end

  def show
    @baby_image = BabyImage.find(params[:id])
    @baby_image_comment = BabyImageComment.new
  end

  def new
    @baby_image = BabyImage.new
  end

  def create
    @baby_image = BabyImage.new(baby_image_params)
    @baby_image.customer_id = current_customer.id
    if @baby_image.save
       redirect_to baby_images_path
    else
      render :new
    end
  end

  def edit
    @baby_image = BabyImage.find(params[:id])
  end

  def update
    @baby_image = BabyImage.find(params[:id])
    if @baby_image.update(baby_image_params)
        redirect_to baby_images_path
    else
      render :edit
    end
  end

  def destroy
    @baby_image = BabyImage.find(params[:id])
    @baby_image.destroy
    redirect_to baby_images_path
  end
  private
  def baby_image_params
    params.require(:baby_image).permit(:customer_id, :baby_image, :body)
  end
end
