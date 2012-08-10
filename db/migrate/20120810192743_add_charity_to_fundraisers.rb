class AddCharityToFundraisers < ActiveRecord::Migration
  def change
	add_column :fundraisers, :charity, :string
  end
end
