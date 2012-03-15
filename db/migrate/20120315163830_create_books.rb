class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.date :book_date
      t.integer :book_num
      t.references :sub_apartment
      t.references :user

      t.timestamps
    end
    add_index :books, :sub_apartment_id
    add_index :books, :user_id
  end
end
