class TimeOffsController < ApplicationController
  before_action :set_time_off, only: [:show, :edit, :update, :destroy]

  # GET /time_offs
  # GET /time_offs.json
  def index
    set_user
    @time_offs = TimeOff.all
  end

  # GET /time_offs/1
  # GET /time_offs/1.json
  def show
    set_user
  end

  # GET /time_offs/new
  def new
    set_user
    @time_off = TimeOff.new
  end

  # GET /time_offs/1/edit
  def edit
    set_user
  end

  # POST /time_offs
  # POST /time_offs.json
  def create
    set_user
    @time_off = TimeOff.new(time_off_params)

    respond_to do |format|
      if @time_off.save
        format.html { redirect_to user_time_off_path(@user, @time_off), notice: 'Time off was successfully created.' }
        format.json { render action: 'show', status: :created, location: @time_off }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_off.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_offs/1
  # PATCH/PUT /time_offs/1.json
  def update
    set_user
    respond_to do |format|
      if @time_off.update(time_off_params)
        format.html { redirect_to user_time_off_path(@user, @time_off), notice: 'Time off was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @time_off.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_offs/1
  # DELETE /time_offs/1.json
  def destroy
    set_user
    @time_off.destroy
    respond_to do |format|
      format.html { redirect_to user_time_offs_url }
      format.json { head :no_content }
    end
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_time_off
      @time_off = TimeOff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_off_params
      params.require(:time_off).permit(:leave_type, :user_id, :date, :number_of_hours, :from, :to, :reason)
    end
end
