class CreateSubApartments < ActiveRecord::Migration
  def change
    create_table :sub_apartments do |t|
      t.string :name
      t.string :website
      t.integer :phone_num
      t.references :apartment
      t.references :area

      t.timestamps
    end
    add_index :sub_apartments, :apartment_id
    add_index :sub_apartments, :area_id
  end
end
