class DanceclassesController < ApplicationController
  before_action :set_danceclass, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, :only => [:index, :show]
  # GET /danceclasses
  # GET /danceclasses.json
  def index
    @danceclasses = Danceclass.all
      # pass the information to the view page of cart 
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
  end

  # GET /danceclasses/1
  # GET /danceclasses/1.json
  def show
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
  end

  # GET /danceclasses/new
  def new
    @danceclass = Danceclass.new
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
  end

  # GET /danceclasses/1/edit
  def edit
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
  end

  # POST /danceclasses
  # POST /danceclasses.json
  def create
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
    @danceclass = Danceclass.new(danceclass_params)

    respond_to do |format|
      if @danceclass.save
        format.html { redirect_to @danceclass, notice: 'Danceclass was successfully created.' }
        format.json { render :show, status: :created, location: @danceclass }
      else
        format.html { render :new }
        format.json { render json: @danceclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danceclasses/1
  # PATCH/PUT /danceclasses/1.json
  def update
    if session[:cart] then
        @cart = session[:cart]
    else
        @cart = {}
    end  
    respond_to do |format|
      if @danceclass.update(danceclass_params)
        format.html { redirect_to @danceclass, notice: 'Danceclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @danceclass }
      else
        format.html { render :edit }
        format.json { render json: @danceclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danceclasses/1
  # DELETE /danceclasses/1.json
  def destroy
    @danceclass.destroy
    respond_to do |format|
      format.html { redirect_to danceclasses_url }
      format.json { head :no_content }
    end
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end 
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danceclass
      if session[:cart] then
        @cart = session[:cart]
      else
        @cart = {}
      end  
      @danceclass = Danceclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def danceclass_params
      params.require(:danceclass).permit(:title, :description, :price, :image_url, :category)
    end
end
