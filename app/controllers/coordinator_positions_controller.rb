class CoordinatorPositionsController < ApplicationController
  before_action :set_coordinator_position, only: [:show, :edit, :update, :destroy]

  # GET /coordinator_positions
  # GET /coordinator_positions.json
  def index
    @coordinator_positions = CoordinatorPosition.all
  end

  # GET /coordinator_positions/1
  # GET /coordinator_positions/1.json
  def show
  end

  # GET /coordinator_positions/new
  def new
    @coordinator_position = CoordinatorPosition.new
  end

  # GET /coordinator_positions/1/edit
  def edit
  end

  # POST /coordinator_positions
  # POST /coordinator_positions.json
  def create
    @coordinator_position = CoordinatorPosition.new(coordinator_position_params)

    respond_to do |format|
      if @coordinator_position.save
        format.html { redirect_to @coordinator_position, notice: 'Coordinator position was successfully created.' }
        format.json { render :show, status: :created, location: @coordinator_position }
      else
        format.html { render :new }
        format.json { render json: @coordinator_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinator_positions/1
  # PATCH/PUT /coordinator_positions/1.json
  def update
    respond_to do |format|
      if @coordinator_position.update(coordinator_position_params)
        format.html { redirect_to @coordinator_position, notice: 'Coordinator position was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinator_position }
      else
        format.html { render :edit }
        format.json { render json: @coordinator_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinator_positions/1
  # DELETE /coordinator_positions/1.json
  def destroy
    @coordinator_position.destroy
    respond_to do |format|
      format.html { redirect_to coordinator_positions_url, notice: 'Coordinator position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinator_position
      @coordinator_position = CoordinatorPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordinator_position_params
      params.require(:coordinator_position).permit(:position, :description)
    end
end
