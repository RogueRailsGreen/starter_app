class StoriesController < ApplicationController

  def new
    @story = Story.new(story_params)
    @story.project = Project.find_by_id(params[:project_id])

    unless @story.project
      redirect_to projects_path and return
    end
  end

  def create
   @story = Story.create(story_params)
   if @story.errors.empty?
     redirect_to projects_path and return
   else
     render :new
   end
  end

  def edit
    @statuses = Status.all.collect { |status| [status.name, status.id] }
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(story_params)
      redirect_to edit_story_path(@story)
    else
      render :edit
    end
  end

  private

  def story_params
    params[:story].permit(:in_order_to, :as_a, :i_want_to, :status_id, :project_id)
  end  
end

