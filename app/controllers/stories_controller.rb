class StoriesController < ApplicationController

  def new
    @story = Story.new
  end

  def create
   @story = Story.create(params[:story].permit(:in_order_to, :as_a, :i_want_to))
   if @story.errors.empty?
     redirect_to new_story_path 
   else
     render :new
   end
  end
end
