class AddAddressToSubApartment < ActiveRecord::Migration
  def change
    add_column :sub_apartments, :address, :string
  end
end
