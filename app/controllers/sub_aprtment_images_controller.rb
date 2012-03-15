class SubAprtmentImagesController < ApplicationController
  # GET /sub_aprtment_images
  # GET /sub_aprtment_images.json
  def index
    @sub_aprtment_images = SubAprtmentImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sub_aprtment_images }
    end
  end

  # GET /sub_aprtment_images/1
  # GET /sub_aprtment_images/1.json
  def show
    @sub_aprtment_image = SubAprtmentImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sub_aprtment_image }
    end
  end

  # GET /sub_aprtment_images/new
  # GET /sub_aprtment_images/new.json
  def new
    @sub_aprtment_image = SubAprtmentImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sub_aprtment_image }
    end
  end

  # GET /sub_aprtment_images/1/edit
  def edit
    @sub_aprtment_image = SubAprtmentImage.find(params[:id])
  end

  # POST /sub_aprtment_images
  # POST /sub_aprtment_images.json
  def create
    @sub_aprtment_image = SubAprtmentImage.new(params[:sub_aprtment_image])

    respond_to do |format|
      if @sub_aprtment_image.save
        format.html { redirect_to @sub_aprtment_image, :notice => 'Sub aprtment image was successfully created.' }
        format.json { render :json => @sub_aprtment_image, :status => :created, :location => @sub_aprtment_image }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sub_aprtment_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_aprtment_images/1
  # PUT /sub_aprtment_images/1.json
  def update
    @sub_aprtment_image = SubAprtmentImage.find(params[:id])

    respond_to do |format|
      if @sub_aprtment_image.update_attributes(params[:sub_aprtment_image])
        format.html { redirect_to @sub_aprtment_image, :notice => 'Sub aprtment image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sub_aprtment_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_aprtment_images/1
  # DELETE /sub_aprtment_images/1.json
  def destroy
    @sub_aprtment_image = SubAprtmentImage.find(params[:id])
    @sub_aprtment_image.destroy

    respond_to do |format|
      format.html { redirect_to sub_aprtment_images_url }
      format.json { head :no_content }
    end
  end
end
