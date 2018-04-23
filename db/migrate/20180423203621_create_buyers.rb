class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :control_number
      t.string :phone

      t.timestamps
    end
  end
end
