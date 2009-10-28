class CommentsController < ApplicationController
  def create
    @deal = Deal.find(params[:deal_id])
    @comment = @deal.comments.build(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to deal_path(@deal)
    end
  end
end
