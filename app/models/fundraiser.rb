class Fundraiser < ActiveRecord::Base
  belongs_to :champions
  has_many :donations
  attr_accessible :champion_id, :deadline, :description, :goal, :title
  
  validates :champion_id, :description, :goal, :title,
  presence: true

  #validates :goal, numericality: (greater_than_or_equal_to: 0.01)

  def progress
	@donations = Donation.find_all_by_fundraiser_id(id)
	@progress = 0
	puts 'VVVVVVVVVVVVVVVVVVV'
	puts @donations.inspect
	puts 'VVVVVVVVVVVVVVVVVVV'
	if @donations.nil?
	  return @progress
	else
	  @donations.each do |d|
		if !d.amount.nil?
		  @progress += d.amount
		end
	  end
	end
	return @progress
  end
end
