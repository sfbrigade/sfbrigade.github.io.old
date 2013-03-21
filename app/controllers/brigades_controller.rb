class BrigadesController < ApplicationController
  
  before_filter :authenticate_admin!, :except => [ :show ]
  
  # GET /brigades
  # GET /brigades.json
  def index
    @brigades = Brigade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brigades }
    end
  end

  # GET /brigades/1
  # GET /brigades/1.json
  def show
    @brigade = Brigade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brigade }
    end
  end

  # GET /brigades/new
  # GET /brigades/new.json
  def new
    @brigade = Brigade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brigade }
    end
  end

  # GET /brigades/1/edit
  def edit
    @brigade = Brigade.find(params[:id])
  end

  # POST /brigades
  # POST /brigades.json
  def create
    @brigade = Brigade.new(params[:brigade])

    respond_to do |format|
      if @brigade.save
        format.html { redirect_to @brigade, notice: 'Brigade was successfully created.' }
        format.json { render json: @brigade, status: :created, location: @brigade }
      else
        format.html { render action: "new" }
        format.json { render json: @brigade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brigades/1
  # PUT /brigades/1.json
  def update
    @brigade = Brigade.find(params[:id])

    respond_to do |format|
      if @brigade.update_attributes(params[:brigade])
        format.html { redirect_to @brigade, notice: 'Brigade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brigade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brigades/1
  # DELETE /brigades/1.json
  def destroy
    @brigade = Brigade.find(params[:id])
    @brigade.destroy

    respond_to do |format|
      format.html { redirect_to brigades_url }
      format.json { head :no_content }
    end
  end
end
