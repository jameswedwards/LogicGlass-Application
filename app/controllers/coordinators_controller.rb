class CoordinatorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_coordinator, only: [:show, :edit, :update, :destroy]


  # GET /coordinators
  # GET /coordinators.json
  def index
    @coordinators = Coordinator.all
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'coordinators/coordinator_report', pdf: 'Report', layout: 'pdf.html'}
    end
  end

  # GET /coordinators/1
  # GET /coordinators/1.json
  def show
  end

  # GET /coordinators/new
  def new
    @coordinator = Coordinator.new
  end

  # GET /coordinators/1/edit
  def edit
  end

  # POST /coordinators
  # POST /coordinators.json
  def create
    @coordinator = Coordinator.new(coordinator_params)

    respond_to do |format|
      if @coordinator.save
        format.html { redirect_to @coordinator, notice: 'Coordinator was successfully created.' }
        format.json { render :show, status: :created, location: @coordinator }
      else
        format.html { render :new }
        format.json { render json: @coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinators/1
  # PATCH/PUT /coordinators/1.json
  def update
    respond_to do |format|
      if @coordinator.update(coordinator_params)
        format.html { redirect_to @coordinator, notice: 'Coordinator was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinator }
      else
        format.html { render :edit }
        format.json { render json: @coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinators/1
  # DELETE /coordinators/1.json
  def destroy
    @coordinator.destroy
    respond_to do |format|
      format.html { redirect_to coordinators_url, notice: 'Coordinator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinator
      @coordinator = Coordinator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordinator_params
      params.require(:coordinator).permit(:peoplesoft_id, :coordinator_position_id, :first_name, :middle_initial, :last_name, :date_of_birth, :address, :city, :zip, :state_id, :country_id, :home_phone, :mobile_phone, :coordinator_status_id, :payment, :student_class_id, :major, coordinator_status_attributes: [:id, :status, :description, :_destroy], coordinator_position_attributes: [:id, :position, :description, :_destroy])
    end
end
