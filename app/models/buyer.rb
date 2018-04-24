# frozen_string_literal: true

class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, uniqueness: true
  validates :control_number, presence: true, length: { is: 8 }, uniqueness: true
  validates :name, presence: true
  validates :phone, presence: true, uniqueness: true
end
