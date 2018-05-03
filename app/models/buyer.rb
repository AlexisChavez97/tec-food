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


class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :control_number, length: { is: 8 }
  validates :name, presence: true, length: { maximum: 40 }
  validates :phone, presence: true, length: { minimum: 10, maximum: 14 }
  validates_uniqueness_of :control_number, case_sensitive: false
end
