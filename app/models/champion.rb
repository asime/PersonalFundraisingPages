class Champion < ActiveRecord::Base
  attr_accessible :twitter_handle, :city, :email, :fname, :lname, :password, :state, :username

validates :city, :email, :fname, :lname, :password, :state, :username, presence: true

end
