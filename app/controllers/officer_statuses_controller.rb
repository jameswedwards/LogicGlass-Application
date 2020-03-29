class OfficerStatusesController < ApplicationController
  before_action :set_officer_status, only: [:show, :edit, :update, :destroy]

  # GET /officer_statuses
  # GET /officer_statuses.json
  def index
    @officer_statuses = OfficerStatus.all
  end

  # GET /officer_statuses/1
  # GET /officer_statuses/1.json
  def show
  end

  # GET /officer_statuses/new
  def new
    @officer_status = OfficerStatus.new
  end

  # GET /officer_statuses/1/edit
  def edit
  end

  # POST /officer_statuses
  # POST /officer_statuses.json
  def create
    @officer_status = OfficerStatus.new(officer_status_params)

    respond_to do |format|
      if @officer_status.save
        format.html { redirect_to @officer_status, notice: 'Officer status was successfully created.' }
        format.json { render :show, status: :created, location: @officer_status }
      else
        format.html { render :new }
        format.json { render json: @officer_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officer_statuses/1
  # PATCH/PUT /officer_statuses/1.json
  def update
    respond_to do |format|
      if @officer_status.update(officer_status_params)
        format.html { redirect_to @officer_status, notice: 'Officer status was successfully updated.' }
        format.json { render :show, status: :ok, location: @officer_status }
      else
        format.html { render :edit }
        format.json { render json: @officer_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officer_statuses/1
  # DELETE /officer_statuses/1.json
  def destroy
    @officer_status.destroy
    respond_to do |format|
      format.html { redirect_to officer_statuses_url, notice: 'Officer status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officer_status
      @officer_status = OfficerStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def officer_status_params
      params.require(:officer_status).permit(:status, :description)
    end
end
