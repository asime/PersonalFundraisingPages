class Charity < ActiveRecord::Base
  attr_accessible :username, :password, :charity_name, :city, :email, :facebook_page, :phone, :state, :street1, :street2, :twitter_handle, :website_url, :zip

validates :username, :password, :charity_name, :city, :email, :phone, :state, :street1, :website_url, :zip,
presence: true

validates_uniqueness_of :username, :case_sensitive => false

end
