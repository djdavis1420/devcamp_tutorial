class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
  end

  private
  def comment_params
    params.require(:comment).perment(:content)
  end
end
