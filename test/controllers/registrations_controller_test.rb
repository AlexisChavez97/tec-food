require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  include Devise::Test::IntegrationHelpers

  def setup
    @request.env['devise.mapping'] = Devise.mappings[:buyer]

    @valid_buyer = buyers(:good_user)
    @invalid_buyer = buyers(:bad_user)
  end

  test 'get new' do
    @request.env['devise.mapping'] = Devise.mappings[:buyer]

    sign_in @valid_buyer

    get :new

    assert_response :success
  end
end
