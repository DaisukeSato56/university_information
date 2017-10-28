require 'test_helper'

class UnisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unis_index_url
    assert_response :success
  end

end
