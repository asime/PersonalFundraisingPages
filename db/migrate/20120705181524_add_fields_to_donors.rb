class AddFieldsToDonors < ActiveRecord::Migration
  def change
	  add_column :donors, :password, :string
	  add_column :donors, :fname, :string
	  add_column :donors, :lname, :string
	  add_column :donors, :email, :string
	  add_column :donors, :street1, :string
	  add_column :donors, :street2, :string
	  add_column :donors, :city, :string
	  add_column :donors, :state, :string
	  add_column :donors, :postal_code, :string
	  add_column :donors, :display_name, :boolean
  end
end
