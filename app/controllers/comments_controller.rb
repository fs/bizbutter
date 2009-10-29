class CommentsController < ApplicationController
  before_filter :find_deal
  
  def create    
    @comment = @deal.comments.build(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Successfully created a comment"
    end
    redirect_to @deal
  end
  
  def destroy
    @comment = @deal.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = "Successfully deleted comment"
    redirect_to @deal
  end
  
  private
  
  def find_deal
    @deal = Deal.find(params[:deal_id])
  end
end
