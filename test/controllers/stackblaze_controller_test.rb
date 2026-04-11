require 'test_helper'

class StackblazeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stackblaze_index_url
    assert_response :success
  end

end
