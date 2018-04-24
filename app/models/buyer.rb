# frozen_string_literal: true

class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :control_number, presence: true, length: { is: 8 }
  validates :name, presence: true, length: { maximum: 40 }
  validates :phone, presence: true, length: { minimum: 10, maximum: 14 }
end
