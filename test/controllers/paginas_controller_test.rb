require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  test "should get terminos" do
    get :terminos
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
