class ColetamaterialsController < ApplicationController
  # GET /coletamaterials
  # GET /coletamaterials.json
  def index
    @coletamaterials = Coletamaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coletamaterials }
    end
  end

  # GET /coletamaterials/1
  # GET /coletamaterials/1.json
  def show
    @coletamaterial = Coletamaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coletamaterial }
    end
  end

  # GET /coletamaterials/new
  # GET /coletamaterials/new.json
  def new
    @coletamaterial = Coletamaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coletamaterial }
    end
  end

  # GET /coletamaterials/1/edit
  def edit
    @coletamaterial = Coletamaterial.find(params[:id])
  end

  # POST /coletamaterials
  # POST /coletamaterials.json
  def create
    @coletamaterial = Coletamaterial.new(params[:coletamaterial])

    respond_to do |format|
      if @coletamaterial.save
        format.html { redirect_to @coletamaterial, notice: 'Coletamaterial was successfully created.' }
        format.json { render json: @coletamaterial, status: :created, location: @coletamaterial }
      else
        format.html { render action: "new" }
        format.json { render json: @coletamaterial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coletamaterials/1
  # PUT /coletamaterials/1.json
  def update
    @coletamaterial = Coletamaterial.find(params[:id])

    respond_to do |format|
      if @coletamaterial.update_attributes(params[:coletamaterial])
        format.html { redirect_to @coletamaterial, notice: 'Coletamaterial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coletamaterial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coletamaterials/1
  # DELETE /coletamaterials/1.json
  def destroy
    @coletamaterial = Coletamaterial.find(params[:id])
    @coletamaterial.destroy

    respond_to do |format|
      format.html { redirect_to coletamaterials_url }
      format.json { head :no_content }
    end
  end
end
