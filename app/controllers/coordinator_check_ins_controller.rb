class CoordinatorCheckInsController < ApplicationController
  before_action :set_coordinator_check_in, only: [:show, :edit, :update, :destroy]

  def full_name
    @coordinators = Coordinator.first_name + Coordinator.last_name
  end

  def event_name
    @events = Event.category + Event.event_date
  end
  # GET /coordinator_check_ins
  # GET /coordinator_check_ins.json
  def index
    @coordinator_check_ins = CoordinatorCheckIn.all
  end

  # GET /coordinator_check_ins/1
  # GET /coordinator_check_ins/1.json
  def show
  end

  # GET /coordinator_check_ins/new
  def new
    @coordinator_check_in = CoordinatorCheckIn.new
  end

  # GET /coordinator_check_ins/1/edit
  def edit
  end

  # POST /coordinator_check_ins
  # POST /coordinator_check_ins.json
  def create
    @coordinator_check_in = CoordinatorCheckIn.new(coordinator_check_in_params)

    respond_to do |format|
      if @coordinator_check_in.save
        format.html { redirect_to @coordinator_check_in, notice: 'Coordinator check in was successfully created.' }
        format.json { render :show, status: :created, location: @coordinator_check_in }
      else
        format.html { render :new }
        format.json { render json: @coordinator_check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinator_check_ins/1
  # PATCH/PUT /coordinator_check_ins/1.json
  def update
    respond_to do |format|
      if @coordinator_check_in.update(coordinator_check_in_params)
        format.html { redirect_to @coordinator_check_in, notice: 'Coordinator check in was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinator_check_in }
      else
        format.html { render :edit }
        format.json { render json: @coordinator_check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinator_check_ins/1
  # DELETE /coordinator_check_ins/1.json
  def destroy
    @coordinator_check_in.destroy
    respond_to do |format|
      format.html { redirect_to coordinator_check_ins_url, notice: 'Coordinator check in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinator_check_in
      @coordinator_check_in = CoordinatorCheckIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordinator_check_in_params
      params.require(:coordinator_check_in).permit(:coordinator_id, :event_id, :check_in_date)
    end
end
