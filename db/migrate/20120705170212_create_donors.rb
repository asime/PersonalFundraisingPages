class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :username

      t.timestamps
    end
  end
end
