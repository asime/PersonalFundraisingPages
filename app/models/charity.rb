class Charity < ActiveRecord::Base

before_create :default_values
 attr_accessible :payment_type_id, :username, :password, :charity_name, :city, :email, :facebook_page, :phone, :state, :street1, :street2, :twitter_handle, :website_url, :zip

validates :username, :password, :charity_name, :city, :email, :phone, :state, :street1, :website_url, :zip,
presence: true

validates_uniqueness_of :username, :case_sensitive => false

  private
	def default_values
	  self.payment_type_id ||= 1
	end

end
