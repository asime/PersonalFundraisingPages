class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :charity_name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :twitter_handle
      t.string :phone
      t.string :email
      t.string :facebook_page
      t.string :website_url

      t.timestamps
    end
  end
end
