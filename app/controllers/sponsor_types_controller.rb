class SponsorTypesController < ApplicationController
  before_action :set_sponsor_type, only: [:show, :edit, :update, :destroy]

  # GET /sponsor_types
  # GET /sponsor_types.json
  def index
    @sponsor_types = SponsorType.all
  end

  # GET /sponsor_types/1
  # GET /sponsor_types/1.json
  def show
  end

  # GET /sponsor_types/new
  def new
    @sponsor_type = SponsorType.new
  end

  # GET /sponsor_types/1/edit
  def edit
  end

  # POST /sponsor_types
  # POST /sponsor_types.json
  def create
    @sponsor_type = SponsorType.new(sponsor_type_params)

    respond_to do |format|
      if @sponsor_type.save
        format.html { redirect_to @sponsor_type, notice: 'Sponsor type was successfully created.' }
        format.json { render :show, status: :created, location: @sponsor_type }
      else
        format.html { render :new }
        format.json { render json: @sponsor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsor_types/1
  # PATCH/PUT /sponsor_types/1.json
  def update
    respond_to do |format|
      if @sponsor_type.update(sponsor_type_params)
        format.html { redirect_to @sponsor_type, notice: 'Sponsor type was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsor_type }
      else
        format.html { render :edit }
        format.json { render json: @sponsor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsor_types/1
  # DELETE /sponsor_types/1.json
  def destroy
    @sponsor_type.destroy
    respond_to do |format|
      format.html { redirect_to sponsor_types_url, notice: 'Sponsor type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor_type
      @sponsor_type = SponsorType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sponsor_type_params
      params.require(:sponsor_type).permit(:type, :description)
    end
end
