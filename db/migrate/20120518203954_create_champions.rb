class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
