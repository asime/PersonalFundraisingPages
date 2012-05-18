class Champion < ActiveRecord::Base
  attr_accessible :city, :email, :fname, :lname, :password, :state, :username
end
