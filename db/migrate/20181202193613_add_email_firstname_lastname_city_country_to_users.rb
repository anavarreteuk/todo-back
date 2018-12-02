class AddEmailFirstnameLastnameCityCountryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
