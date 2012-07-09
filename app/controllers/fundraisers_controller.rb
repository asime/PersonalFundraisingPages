class FundraisersController < ApplicationController
  # GET /fundraisers
  # GET /fundraisers.json
  def index
    @fundraisers = Fundraiser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fundraisers }
    end
  end

  # GET /fundraisers/1
  # GET /fundraisers/1.json
  def show
    @fundraiser = Fundraiser.find(params[:id])

	@champion = Champion.find(@fundraiser.champion_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fundraiser }
    end
  end

  # GET /fundraisers/new
  # GET /fundraisers/new.json
  def new
    @fundraiser = Fundraiser.new
    
    puts "FFFFFFFFFFFFFFF"
	  puts @fundraiser.inspect
	  puts "FFFFFFFFFFFFFFF"

	  @fundraiser.champion_id=params[:champion]
	  @champion = Champion.find(@fundraiser.champion_id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fundraiser }
    end
  end

  # GET /fundraisers/1/edit
  def edit
    @fundraiser = Fundraiser.find(params[:id])
	  @champion = Champion.find(@fundraiser.champion_id)
  end

  # POST /fundraisers
  # POST /fundraisers.json
  def create
    @fundraiser = Fundraiser.new(params[:fundraiser])
	#@fundraiser.champion_id=params[:champion]
    respond_to do |format|
      if @fundraiser.save
        format.html { redirect_to @fundraiser, notice: 'Fundraiser was successfully created.' }
        format.json { render json: @fundraiser, status: :created, location: @fundraiser }
      else
        format.html { render action: "new" }
        format.json { render json: @fundraiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fundraisers/1
  # PUT /fundraisers/1.json
  def update
    @fundraiser = Fundraiser.find(params[:id])

    respond_to do |format|
      if @fundraiser.update_attributes(params[:fundraiser])
        format.html { redirect_to @fundraiser, notice: 'Fundraiser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fundraiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundraisers/1
  # DELETE /fundraisers/1.json
  def destroy
    @fundraiser = Fundraiser.find(params[:id])
    @fundraiser.destroy

    respond_to do |format|
      format.html { redirect_to fundraisers_url }
      format.json { head :no_content }
    end
  end

  # DONATE /fundraisers/1
  # DONATE /fundraisers/1.json
  def donate
	  @fundraiser = Fundraiser.find(params[:id])
	  @donor = Donor.new
	  puts "HHHHHHHHHHHHHH"
	  puts @donor.inspect
	  puts "HHHHHHHHHHHHHH"
	  
	  respond_to do |format|
      format.html # donate.html.erb
      format.json { render json: @fundraisers }
    end
  end

end
