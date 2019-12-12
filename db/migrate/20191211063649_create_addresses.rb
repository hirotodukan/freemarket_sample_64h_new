class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.string :addresses_first_name, null: false
      t.string :addresses_last_name, null: false
      t.string :addresses_first_name_kana, null: false
      t.string :addresses_last_name_kana, null: false
      t.string :post_number, null: false
      t.string :city, null: false
      t.string :town, null: false
      t.string :building
      t.integer :user_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
