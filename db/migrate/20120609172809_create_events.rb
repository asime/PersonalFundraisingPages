class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :time
      t.string :champion

      t.timestamps
    end
  end
end
