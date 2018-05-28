# == Schema Information
#
# Table name: products
#
#  id             :bigint(8)        not null, primary key
#  name           :string           default(""), not null
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("MXN"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  seller_id      :bigint(8)
#  description    :string
#

class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  belongs_to :seller
end
