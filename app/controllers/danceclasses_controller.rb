class DanceclassesController < ApplicationController
  before_action :set_danceclass, only: [:show, :edit, :update, :destroy]

  # GET /danceclasses
  # GET /danceclasses.json
  def index
    @danceclasses = Danceclass.all
  end

  # GET /danceclasses/1
  # GET /danceclasses/1.json
  def show
  end

  # GET /danceclasses/new
  def new
    @danceclass = Danceclass.new
  end

  # GET /danceclasses/1/edit
  def edit
  end

  # POST /danceclasses
  # POST /danceclasses.json
  def create
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
      format.html { redirect_to danceclasses_url, notice: 'Danceclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danceclass
      @danceclass = Danceclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def danceclass_params
      params.require(:danceclass).permit(:title, :description, :price, :image_url, :category)
    end
end
