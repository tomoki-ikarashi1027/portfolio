require 'test_helper'

class BabyImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get baby_images_index_url
    assert_response :success
  end

  test "should get show" do
    get baby_images_show_url
    assert_response :success
  end

  test "should get new" do
    get baby_images_new_url
    assert_response :success
  end

  test "should get create" do
    get baby_images_create_url
    assert_response :success
  end

  test "should get edit" do
    get baby_images_edit_url
    assert_response :success
  end

  test "should get update" do
    get baby_images_update_url
    assert_response :success
  end

  test "should get destroy" do
    get baby_images_destroy_url
    assert_response :success
  end

end
