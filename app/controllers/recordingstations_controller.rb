class RecordingstationsController < ApplicationController
  before_action :set_recordingstation, only: [:show, :edit, :update, :destroy]

  # GET /recordingstations
  # GET /recordingstations.json
  def index
    @recordingstations = Recordingstation.all
  end

  # GET /recordingstations/1
  # GET /recordingstations/1.json
  def show
  end

  # GET /recordingstations/new
  def new
    @recordingstation = Recordingstation.new
  end

  # GET /recordingstations/1/edit
  def edit
  end

  # POST /recordingstations
  # POST /recordingstations.json
  def create
    @recordingstation = Recordingstation.new(recordingstation_params)

    respond_to do |format|
      if @recordingstation.save
        format.html { redirect_to @recordingstation, notice: 'Recordingstation was successfully created.' }
        format.json { render :show, status: :created, location: @recordingstation }
      else
        format.html { render :new }
        format.json { render json: @recordingstation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recordingstations/1
  # PATCH/PUT /recordingstations/1.json
  def update
    respond_to do |format|
      if @recordingstation.update(recordingstation_params)
        format.html { redirect_to @recordingstation, notice: 'Recordingstation was successfully updated.' }
        format.json { render :show, status: :ok, location: @recordingstation }
      else
        format.html { render :edit }
        format.json { render json: @recordingstation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recordingstations/1
  # DELETE /recordingstations/1.json
  def destroy
    @recordingstation.destroy
    respond_to do |format|
      format.html { redirect_to recordingstations_url, notice: 'Recordingstation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def import
  Recordingstation.import(params[:file])
  redirect_to recordingstations_path, notice: "Recordingstations Added Successfully"

end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recordingstation
      @recordingstation = Recordingstation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recordingstation_params
      params.require(:recordingstation).permit(:quakeId, :updated, :place, :quaketype, :horizontalError, :depthError, :magError, :magNst, :status, :locationSource, :stationCode)
    end
end
