class Donation < ActiveRecord::Base
  belongs_to :fundraisers
  belongs_to :donors
  attr_accessible :amount, :comments, :donor_id, :fundraiser_id
  #validates :amount, :comments, :donor_id, :fundraiser_id, presence: true
end
