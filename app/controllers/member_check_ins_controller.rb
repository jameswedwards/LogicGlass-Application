class MemberCheckInsController < ApplicationController
  before_action :set_member_check_in, only: [:show, :edit, :update, :destroy]


  def event_name
    @events = Event.category + Event.event_date
  end

  # GET /member_check_ins
  # GET /member_check_ins.json
  def index
    @member_check_ins = MemberCheckIn.search(params[:search])
  end

  # GET /member_check_ins/1
  # GET /member_check_ins/1.json
  def show
  end

  # GET /member_check_ins/new
  def new
    @member_check_in = MemberCheckIn.new
  end

  # GET /member_check_ins/1/edit
  def edit
  end

  # POST /member_check_ins
  # POST /member_check_ins.json
  def create
    @member_check_in = MemberCheckIn.new(member_check_in_params)

    respond_to do |format|
      if @member_check_in.save
        format.html { redirect_to @member_check_in, notice: 'Member check in was successfully created.' }
        format.json { render :show, status: :created, location: @member_check_in }
      else
        format.html { render :new }
        format.json { render json: @member_check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_check_ins/1
  # PATCH/PUT /member_check_ins/1.json
  def update
    respond_to do |format|
      if @member_check_in.update(member_check_in_params)
        format.html { redirect_to @member_check_in, notice: 'Member check in was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_check_in }
      else
        format.html { render :edit }
        format.json { render json: @member_check_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_check_ins/1
  # DELETE /member_check_ins/1.json
  def destroy
    @member_check_in.destroy
    respond_to do |format|
      format.html { redirect_to member_check_ins_url, notice: 'Member check in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_check_in
      @member_check_in = MemberCheckIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_check_in_params
      params.require(:member_check_in).permit(:member_id, :event_id, :check_in_date)
    end
end
