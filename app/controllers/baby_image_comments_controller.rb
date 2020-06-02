class BabyImageCommentsController < ApplicationController
  def create
  	@baby_image = BabyImage.find(params[:id])
  	@baby_image_comment = @baby_image.baby_image_comment
  	if @baby_image_comment.save
  		redirect_to baby_image_path(@baby_image)
  	else
  		render template: "baby_images/show"
  	end
  end

  def destroy
  end
  private
  def  baby_image_comment_params
  	params.require(:baby_image_comment).permit(:customer_id, :baby_image_id, :body)
  end
end
