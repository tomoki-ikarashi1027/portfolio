require 'test_helper'

class BabyImageCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get baby_image_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get baby_image_comments_destroy_url
    assert_response :success
  end

end
