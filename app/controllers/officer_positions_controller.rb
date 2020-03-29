class OfficerPositionsController < ApplicationController
  before_action :set_officer_position, only: [:show, :edit, :update, :destroy]

  # GET /officer_positions
  # GET /officer_positions.json
  def index
    @officer_positions = OfficerPosition.all
  end

  # GET /officer_positions/1
  # GET /officer_positions/1.json
  def show
  end

  # GET /officer_positions/new
  def new
    @officer_position = OfficerPosition.new
  end

  # GET /officer_positions/1/edit
  def edit
  end

  # POST /officer_positions
  # POST /officer_positions.json
  def create
    @officer_position = OfficerPosition.new(officer_position_params)

    respond_to do |format|
      if @officer_position.save
        format.html { redirect_to @officer_position, notice: 'Officer position was successfully created.' }
        format.json { render :show, status: :created, location: @officer_position }
      else
        format.html { render :new }
        format.json { render json: @officer_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officer_positions/1
  # PATCH/PUT /officer_positions/1.json
  def update
    respond_to do |format|
      if @officer_position.update(officer_position_params)
        format.html { redirect_to @officer_position, notice: 'Officer position was successfully updated.' }
        format.json { render :show, status: :ok, location: @officer_position }
      else
        format.html { render :edit }
        format.json { render json: @officer_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officer_positions/1
  # DELETE /officer_positions/1.json
  def destroy
    @officer_position.destroy
    respond_to do |format|
      format.html { redirect_to officer_positions_url, notice: 'Officer position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officer_position
      @officer_position = OfficerPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def officer_position_params
      params.require(:officer_position).permit(:position, :description)
    end
end
