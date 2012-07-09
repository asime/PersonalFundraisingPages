class Donor < ActiveRecord::Base
  has_many :donations
  attr_accessible :username, :password, :fname, :lname, :email, 
    :street1, :street2, :city, :state, :postal_code, :display_name
end
