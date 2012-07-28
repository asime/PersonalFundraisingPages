class HomeController < ApplicationController
  def index
	  @fundraisers = Fundraiser.all
  end
end
