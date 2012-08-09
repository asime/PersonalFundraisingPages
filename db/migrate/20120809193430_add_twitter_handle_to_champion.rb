class AddTwitterHandleToChampion < ActiveRecord::Migration
  def change
	add_column :champions, :twitter_handle, :string
  end
end
