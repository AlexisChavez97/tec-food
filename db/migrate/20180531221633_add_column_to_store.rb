class AddColumnToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :order, :boolean
  end
end
