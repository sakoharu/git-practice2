require "test_helper"

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new," do
    get images_new,_url
    assert_response :success
  end

  test "should get index," do
    get images_index,_url
    assert_response :success
  end

  test "should get show" do
    get images_show_url
    assert_response :success
  end
end
