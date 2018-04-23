require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'home action should be root route' do
    get root_path

    assert_response :success
  end
end
