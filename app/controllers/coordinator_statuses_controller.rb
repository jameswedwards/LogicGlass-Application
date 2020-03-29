class CoordinatorStatusesController < ApplicationController
  before_action :set_coordinator_status, only: [:show, :edit, :update, :destroy]

  # GET /coordinator_statuses
  # GET /coordinator_statuses.json
  def index
    @coordinator_statuses = CoordinatorStatus.all
  end

  # GET /coordinator_statuses/1
  # GET /coordinator_statuses/1.json
  def show
  end

  # GET /coordinator_statuses/new
  def new
    @coordinator_status = CoordinatorStatus.new
  end

  # GET /coordinator_statuses/1/edit
  def edit
  end

  # POST /coordinator_statuses
  # POST /coordinator_statuses.json
  def create
    @coordinator_status = CoordinatorStatus.new(coordinator_status_params)

    respond_to do |format|
      if @coordinator_status.save
        format.html { redirect_to @coordinator_status, notice: 'Coordinator status was successfully created.' }
        format.json { render :show, status: :created, location: @coordinator_status }
      else
        format.html { render :new }
        format.json { render json: @coordinator_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinator_statuses/1
  # PATCH/PUT /coordinator_statuses/1.json
  def update
    respond_to do |format|
      if @coordinator_status.update(coordinator_status_params)
        format.html { redirect_to @coordinator_status, notice: 'Coordinator status was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinator_status }
      else
        format.html { render :edit }
        format.json { render json: @coordinator_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinator_statuses/1
  # DELETE /coordinator_statuses/1.json
  def destroy
    @coordinator_status.destroy
    respond_to do |format|
      format.html { redirect_to coordinator_statuses_url, notice: 'Coordinator status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinator_status
      @coordinator_status = CoordinatorStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordinator_status_params
      params.require(:coordinator_status).permit(:status, :description)
    end
end
