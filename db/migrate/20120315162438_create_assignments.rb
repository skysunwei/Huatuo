class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.date :expired_date
      t.references :apartment
      t.references :user

      t.timestamps
    end
    add_index :assignments, :apartment_id
    add_index :assignments, :user_id
  end
end
