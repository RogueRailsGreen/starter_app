class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  def index
    @selected_field = params[:sort_field] || 'name'
    @selected_direction = params[:sort_direction] || '' # Empty string implies Ascending.
    @other_direction = @selected_direction == '' ? 'DESC' : ''
    if @selected_field == 'name'
      @name_dirn = @other_direction
      @description_dirn = ''
    elsif @selected_field == 'description'
      @description_dirn = @other_direction
      @name_dirn = ''
    end

    @projects = Project.all( order: "#{ @selected_field } #{ @selected_direction }" )
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:name, :description)
    end
end
