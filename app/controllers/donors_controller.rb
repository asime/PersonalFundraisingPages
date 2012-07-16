class DonorsController < ApplicationController
  # GET /donors
  # GET /donors.json
  def index
    @donors = Donor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donors }
    end
  end

  # GET /donors/1
  # GET /donors/1.json
  def show
    @donor = Donor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @donor }
    end
  end

  # GET /donors/new
  # GET /donors/new.json
  def new
    @donor = Donor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donor }
    end
  end

  # GET /donors/1/edit
  def edit
    @donor = Donor.find(params[:id])
  end

  # POST /donors
  # POST /donors.json
  def create
    @donor = Donor.new(params[:donor])

puts 'VVVVVVVVVVVVVVVV'
puts params.inspect
puts 'VVVVVVVVVVVVVVVV'
puts  params[:donor][:donations_attributes]['0'][:fundraiser_id].inspect

	if @donor.save
		redirect_to "/fundraisers/#{params[:donor][:donations_attributes]['0'][:fundraiser_id]}/thanks"
	else
		respond_to do |format|
		  format.html { render action: "new" }
		   format.json { render json: @donor.errors, status: :unprocessable_entity }
		end
	end
  end

  # PUT /donors/1
  # PUT /donors/1.json
  def update
    @donor = Donor.find(params[:id])

    respond_to do |format|
      if @donor.update_attributes(params[:donor])
        format.html { redirect_to @donor, notice: 'Donor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donors/1
  # DELETE /donors/1.json
  def destroy
    @donor = Donor.find(params[:id])
    @donor.destroy

    respond_to do |format|
      format.html { redirect_to donors_url }
      format.json { head :no_content }
    end
  end
end
