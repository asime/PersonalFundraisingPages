class Event < ActiveRecord::Base
	belongs_to :champion attr_accessible :champion, :day, :location, :month, :time, :title, :year
end
