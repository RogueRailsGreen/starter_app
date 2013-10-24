class StoriesController < ApplicationController

  def new
    @story = Story.new
  end

  def create
   @story = Story.create(params[:story].permit(:in_order_to, :as_a, :i_want_to))
   redirect_to new_story_path 
  end
end
