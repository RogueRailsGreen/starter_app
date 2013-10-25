class StoriesController < ApplicationController

  def new
    @statuses = Status.all.collect { |status| [status.name, status.id] }
    @story = Story.new(story_params)
    @story.project = Project.find_by_id(params[:project_id])

    unless @story.project
      redirect_to( projects_path, flash: { error: 'Invalid Project ID provided.' } ) and return
    end
  end

  def create
    @story = Story.create(story_params)
    if @story.errors.empty?
      redirect_to( project_path( @story.project ), flash: { notice: 'Story was successfully created.' } ) and return
    else
      @statuses = Status.all.collect { |status| [status.name, status.id] }
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
      redirect_to( project_path( @story.project ), flash: { notice: 'Story was successfully updated.' } )
    else
      @statuses = Status.all.collect { |status| [status.name, status.id] }
      render :edit
    end
  end

  def show
    @story = Story.find( params[:id] )
  end

  private

  def story_params
    if params[:story]
      params[:story].permit(:in_order_to, :as_a, :i_want_to, :status_id, :project_id, :business_value, :complexity_value)
    else
      {}
    end
  end  
end

