class AddDonorsFundraisersToDonations < ActiveRecord::Migration
  change_table :donations do |t|
	t.references :donor
	t.references :fundraiser
  end
end
