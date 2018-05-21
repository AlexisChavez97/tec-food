class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, default: '', null: false
      t.integer :price_cents, default: 0, null: false
      t.string :price_currency, default: 'MXN', null: false

      t.timestamps
    end
  end
end
