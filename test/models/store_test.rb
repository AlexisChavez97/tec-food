# == Schema Information
#
# Table name: stores
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  def setup
    @valid_store = stores(:store_2)
    @invalid_store = stores(:store_1)
  end

  test 'store is valid' do
    assert @valid_store.valid?
  end

  test 'store is invalid' do
    assert_not @invalid_store.valid?
  end
end
