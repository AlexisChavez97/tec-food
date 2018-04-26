# frozen_string_literal: true

require 'test_helper'

class BuyerTest < ActiveSupport::TestCase
  def setup
    @valid_buyer = buyers(:good_user)
    @invalid_buyer = buyers(:bad_user)
  end

  test 'buyer is valid' do
    assert @valid_buyer.valid?
  end

  test 'buyer is invalid' do
    assert_not @invalid_buyer.valid?
  end
end
