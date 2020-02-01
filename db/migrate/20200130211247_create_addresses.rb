class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.integer :zipcode,       null: false
      t.string :prefecture,     null: false
      t.string :city,           null: false
      t.string :detail_address, null: false
      t.string :building
      t.string :optional_phone_number
      t.references :user,       foreign_key: true

      t.timestamps
    end
  end
end
