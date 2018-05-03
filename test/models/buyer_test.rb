# frozen_string_literal: true

# == Schema Information
#
# Table name: buyers
#
#  id                     :bigint(8)        not null, primary key
#  name                   :string
#  control_number         :string
#  phone                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#


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
