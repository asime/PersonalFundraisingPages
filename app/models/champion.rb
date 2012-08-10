class Champion < ActiveRecord::Base
  attr_accessible :twitter_handle, :city, :email, :fname, :lname, :password, :state, :username

validates :city, :email, :fname, :lname, :password, :state, :username, presence: true

validates_uniqueness_of :username, :case_sensitive => false

end
