require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  	test "should get show" do
		get :home
		assert_response :success
	end
end
