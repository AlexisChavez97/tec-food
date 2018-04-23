# frozen_string_literal: true

class AddIndexToBuyersControlNumber < ActiveRecord::Migration[5.2]
  def change
    add_index :buyers, :control_number, unique: true
  end
end
