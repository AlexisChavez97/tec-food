# == Schema Information
#
# Table name: stores
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#  seller_id   :bigint(8)
#

class Store < ApplicationRecord
  belongs_to :seller
  has_many :products
  validates :name, presence: true
end
