class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :website
      t.integer :phone_num

      t.timestamps
    end
  end
end
