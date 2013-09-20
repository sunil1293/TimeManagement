class UsersController < ApplicationController

  load_and_authorize_resource

  layout 'user_layout', only: [:show]


  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    set_user
  end

  # GET /users/new
  def new
    @user = User.new
    @msg = { "success" => "true", "message" => "hello"}

    respond_to do |format|
      format.html
      format.json { render json: @msg }
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Successfully created User."
      redirect_to users_path
    else
     render :action => 'new'
   end
 end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def users_by_role
    users = User.users_by_role(params[:role])
     respond_to do |format|
        format.json { render json: users.pluck(:id,:first_name) }
     end
  end    
  
  
  private


  def update_projects
    @projects = Project.where(:reported_to => params[:id]) unless params[:id].blank?
    render :partial => "projects", :locals => { :projects => projects }
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :role, :reported_to, :under_project, :profile_photo)
    end
  end
