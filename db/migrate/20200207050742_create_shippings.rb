class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.string :fee_burden, null: false
      t.string :shipping_method, null: false
      t.string :shipping_area, null: false
      t.string :shipping_days, null: false
      t.references :item, foreign_key: true, null: false
      t.timestamps
    end
  end
end
