class QuakelocationsController < ApplicationController
  before_action :set_quakelocation, only: [:show, :edit, :update, :destroy]

  # GET /quakelocations
  # GET /quakelocations.json
  def index
    @quakelocations = Quakelocation.all
  end

  # GET /quakelocations/1
  # GET /quakelocations/1.json
  def show
  end

  # GET /quakelocations/new
  def new
    @quakelocation = Quakelocation.new
  end

  # GET /quakelocations/1/edit
  def edit
  end

  # POST /quakelocations
  # POST /quakelocations.json
  def create
    @quakelocation = Quakelocation.new(quakelocation_params)

    respond_to do |format|
      if @quakelocation.save
        format.html { redirect_to @quakelocation, notice: 'Quakelocation was successfully created.' }
        format.json { render :show, status: :created, location: @quakelocation }
      else
        format.html { render :new }
        format.json { render json: @quakelocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quakelocations/1
  # PATCH/PUT /quakelocations/1.json
  def update
    respond_to do |format|
      if @quakelocation.update(quakelocation_params)
        format.html { redirect_to @quakelocation, notice: 'Quakelocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @quakelocation }
      else
        format.html { render :edit }
        format.json { render json: @quakelocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quakelocations/1
  # DELETE /quakelocations/1.json
  def destroy
    @quakelocation.destroy
    respond_to do |format|
      format.html { redirect_to quakelocations_url, notice: 'Quakelocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quakelocation
      @quakelocation = Quakelocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quakelocation_params
      params.require(:quakelocation).permit(:address, :latitude, :longitude, :time, :mag)
    end
end
