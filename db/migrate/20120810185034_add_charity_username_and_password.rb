class AddCharityUsernameAndPassword < ActiveRecord::Migration
  def change
	add_column :charities, :username, :string
	add_column :charities, :password, :string
  end
end
