class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :name,         null: false
      t.text :state
      t.string :condition,    null: false
      t.integer :price,       null: false
      t.integer :size_id, foreign_key: true
      t.integer :category_id, foreign_key: true
      t.integer :brand_id, foreign_key: true
      t.integer :buyer_id, foreign_key: true
      t.integer :seller_id, foreign_key: true

      t.timestamps
    end
  end
end
