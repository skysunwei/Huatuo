class SubApartmentsController < ApplicationController
  # GET /sub_apartments
  # GET /sub_apartments.json
  def index
    @sub_apartments = SubApartment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sub_apartments }
    end
  end

  # GET /sub_apartments/1
  # GET /sub_apartments/1.json
  def show
    @sub_apartment = SubApartment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sub_apartment }
    end
  end

  # GET /sub_apartments/new
  # GET /sub_apartments/new.json
  def new
    @sub_apartment = SubApartment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sub_apartment }
    end
  end

  # GET /sub_apartments/1/edit
  def edit
    @sub_apartment = SubApartment.find(params[:id])
  end

  # POST /sub_apartments
  # POST /sub_apartments.json
  def create
    @apartment = Apartment.find(params[:apartment_id])
    @sub_apartment = @apartment.sub_apartments.create(params[:sub_apartment])
    redirect_to apartment_path(@apartment)
  
#    respond_to do |format|
#      if @sub_apartment.save
#        format.html { redirect_to @sub_apartment, :notice => 'Sub apartment was successfully created.' }
#        format.json { render :json => @sub_apartment, :status => :created, :location => @sub_apartment }
#      else
#        format.html { render :action => "new" }
#        format.json { render :json => @sub_apartment.errors, :status => :unprocessable_entity }
#      end
#    end
  end

  # PUT /sub_apartments/1
  # PUT /sub_apartments/1.json
  def update
    @sub_apartment = SubApartment.find(params[:id])

    respond_to do |format|
      if @sub_apartment.update_attributes(params[:sub_apartment])
        format.html { redirect_to @sub_apartment, :notice => 'Sub apartment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sub_apartment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_apartments/1
  # DELETE /sub_apartments/1.json
  def destroy
    @sub_apartment = SubApartment.find(params[:id])
    @sub_apartment.destroy

    respond_to do |format|
      format.html { redirect_to sub_apartments_url }
      format.json { head :no_content }
    end
  end
end
