class CreateSubAprtmentImages < ActiveRecord::Migration
  def change
    create_table :sub_aprtment_images do |t|
      t.string :name
      t.string :url
      t.references :sub_apartment

      t.timestamps
    end
    add_index :sub_aprtment_images, :sub_apartment_id
  end
end
