class Buyer < ApplicationRecord
  validates :control_number, presence: true, length: { is: 8 }
  validates :name, presence: true
  validates :phone, presence: true
end
