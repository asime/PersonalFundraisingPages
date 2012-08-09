class Charity < ActiveRecord::Base
  attr_accessible :charity_name, :city, :email, :facebook_page, :phone, :state, :street1, :street2, :twitter_handle, :website_url, :zip
end
