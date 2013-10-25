class StoriesController < ApplicationController

  def new

    with_project_protection do 
      # Nothing to do ... 
    end

  end

  def create

    with_project_protection do

      @story.update_attributes( params[:story].permit(:in_order_to, :as_a, :i_want_to))

      if @story.errors.empty?
        redirect_to project_path( @story.project )
      else
        render :new
      end

    end
  end

  private

  def with_project_protection( &block )

    # Get project_id
    project_id = params[:project_id]

    # Ensure project_id was provided.
    if( project_id.nil? )
      # No ID, get out!
      redirect_to projects_url, flash: { error: 'Project ID is required.' }      
    else

      # Attempt to load the project
      project = Project.find_by_id( project_id )

      if( project.nil? )
        # No project, get out!
        redirect_to projects_url, flash: { error: "Project ID '#{ project_id }' is invalid." }
      else

        @story = project.stories.build

        # Yay! Setup story and let the user continue.
        yield

      end

    end

  end

end