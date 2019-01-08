class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Address, :string
  end
end
