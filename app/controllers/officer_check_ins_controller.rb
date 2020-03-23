class OfficerCheckInsController < ApplicationController
  before_action :set_officer_check_in, only: [:show, :edit, :update, :destroy]

  # GET /officer_check_ins
  # GET /officer_check_ins.json
  def index
    @officer_check_ins = OfficerCheckIn.all
  end

  # GET /officer_check_ins/1
  # GET /officer_check_ins/1.json
  def show
  end

  # GET /officer_check_ins/new
  def new
    @officer_check_in = OfficerCheckIn.new
  end

  # GET /officer_check_ins/1/edit
  def edit
  end

  # POST /officer_check_ins
  # POST /officer_check_ins.json
  def create
    @officer_check_in = OfficerCheckIn.new(officer_check_in_params)

    respond_to do |format|
      if @officer_check_in.save
        format.html { redirect_to @officer_check_in, notice: 'Officer check in was successfully created.' }
        format.json { render :show, status: :created, location: @officer_check_in }
      else
        format.html { render :new }
        format.json { render json: @officer_check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officer_check_ins/1
  # PATCH/PUT /officer_check_ins/1.json
  def update
    respond_to do |format|
      if @officer_check_in.update(officer_check_in_params)
        format.html { redirect_to @officer_check_in, notice: 'Officer check in was successfully updated.' }
        format.json { render :show, status: :ok, location: @officer_check_in }
      else
        format.html { render :edit }
        format.json { render json: @officer_check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officer_check_ins/1
  # DELETE /officer_check_ins/1.json
  def destroy
    @officer_check_in.destroy
    respond_to do |format|
      format.html { redirect_to officer_check_ins_url, notice: 'Officer check in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officer_check_in
      @officer_check_in = OfficerCheckIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def officer_check_in_params
      params.require(:officer_check_in).permit(:officer_id, :event_id, :check_in_date)
    end
end
