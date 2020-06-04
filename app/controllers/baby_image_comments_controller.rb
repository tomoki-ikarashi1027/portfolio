class BabyImageCommentsController < ApplicationController
  def create
  	baby_image = BabyImage.find(params[:baby_image_id])
    comment = current_customer.baby_image_comments.new(baby_image_comment_params)
    comment.baby_image_id = baby_image.id
    if comment.save
       redirect_to baby_image_path(baby_image)
    else
      render template: "baby_images/show"
    end
  end

  def destroy
    BabyImageComment.find_by(id: params[:id], baby_image_id: params[:baby_image_id]).destroy
  	redirect_to baby_image_path(params[:baby_image_id])
  end
  private
  def  baby_image_comment_params
  	params.require(:baby_image_comment).permit(:body, :baby_image_id)
  end
end