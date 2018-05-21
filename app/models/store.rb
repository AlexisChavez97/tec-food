# == Schema Information
#
# Table name: stores
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#

class Store < ApplicationRecord
  validates :name, presence: true
end
