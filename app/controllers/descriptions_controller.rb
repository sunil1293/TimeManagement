class DescriptionsController < ApplicationController
  before_action :set_description, only: [:show, :edit, :update, :destroy]

  # GET /descriptions
  # GET /descriptions.json
  def index
    set_user
    @descriptions = Description.all
  end

  # GET /descriptions/1
  # GET /descriptions/1.json
  def show
    set_user
  end

  # GET /descriptions/new
  def new
    set_user
    @description = Description.new
  end

  # GET /descriptions/1/edit
  def edit
    set_user
  end

  # POST /descriptions
  # POST /descriptions.json
  def create
    
    set_user
    @description = Description.new(description_params)

    respond_to do |format|
      if @description.save
        format.html { redirect_to user_description_path(@user, @description), notice: 'Description was successfully created.' }
        format.json { render action: 'show', status: :created, location: @description }
      else
        format.html { render action: 'new' }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descriptions/1
  # PATCH/PUT /descriptions/1.json
  def update
    set_user
    respond_to do |format|
      if @description.update(description_params)
        format.html { redirect_to user_description_path(@user, @description), notice: 'Description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions/1
  # DELETE /descriptions/1.json
  def destroy
    @description.destroy
    respond_to do |format|
      format.html { redirect_to user_descriptions_url }
      format.json { head :no_content }
    end
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_description
      @description = Description.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_params
      params.require(:description).permit(:user_id, :status_on, :today_status, :number_of_hours, :select_project, :select_task )
    end
end

