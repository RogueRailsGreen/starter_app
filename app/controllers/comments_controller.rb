class CommentsController < ApplicationController
  def new
    @comment = story.comments.build
  end

  def create
    @comment = story.comments.build(comment_params)
    if @comment.save!
      redirect_to story_path(story), notice: "Comment was successfully created."
    else
      render :new
    end
  end

  private

  def story
    @story ||= Story.find(params[:story_id])
  end

  def comment_params
    params[:comment].permit(:body)    
  end
end
