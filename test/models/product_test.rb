# == Schema Information
#
# Table name: products
#
#  id             :bigint(8)        not null, primary key
#  name           :string           default(""), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  seller_id      :bigint(8)
#  description    :string
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("MXN"), not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
