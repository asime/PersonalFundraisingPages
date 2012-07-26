class HomeController < ApplicationController
  def index
	@fundraiser = Fundraiser.all
  end
end
