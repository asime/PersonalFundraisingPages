class Fundraiser < ActiveRecord::Base
  belongs_to :champions
  attr_accessible :champion_id, :deadline, :description, :goal, :title
end
