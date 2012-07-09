class Fundraiser < ActiveRecord::Base
  belongs_to :champions
  has_many :donations
  attr_accessible :champion_id, :deadline, :description, :goal, :title
  
  def progress
	@donations = Donation.find_all_by_fundraiser_id(@fundraiser_id)
	@progress = 0
	@donations.each do |d|
	  @progress += d.amount
	end
	return @progress
  end
end
