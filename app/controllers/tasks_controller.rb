class TasksController < ApplicationController

  load_and_authorize_resource
  
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    set_user
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    set_user
    set_task
  end

  # GET /tasks/new
  def new
    set_user
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
    set_user
    set_task
  end

  # POST /tasks
  # POST /tasks.json
  def create
    set_user
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to user_task_path(@user, @task), notice: 'Task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task }
      else
        format.html { render action: 'new' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    set_user
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to user_task_path(@user, @task), notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    set_user
    @task.destroy
    respond_to do |format|
      format.html { redirect_to user_tasks_url }
      format.json { head :no_content }
    end
  end

  def users_by_project
    users = User.users_by_project(params[:under_project])
     respond_to do |format|
        format.json { render json: users.pluck(:id, :first_name) }
     end
  end    

  private

    def set_user
      @user = User.find(params[:user_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:task, :expected_end_date, :user_id, :assigned_to, :under_project, :start_date, :status, :description)
    end
end
