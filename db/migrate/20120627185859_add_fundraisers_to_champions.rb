class AddFundraisersToChampions < ActiveRecord::Migration
  change_table :fundraisers do |t|
	t.references :champion
  end
end
