class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
      if @project.save
        redirect_to @project, notice: 'project was successfully created.' 
      else
        render action: 'new'
      end
  end

  def show
  	set_project
  end

  def edit
  	set_project
  end

  def update
  	set_project
  	if @project.update(project_params)
        redirect_to @project, notice: 'project was successfully updated.' 
    else
        render action: 'edit'
    end
  end

  def destroy
  	set_project
  	@project.destroy
    redirect_to projects_url, notice: 'project was deleted.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:project_name)
    end
end
