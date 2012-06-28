class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string :title
      t.text :description
      t.decimal :goal
      t.datetime :deadline

      t.timestamps
    end
  end
end
