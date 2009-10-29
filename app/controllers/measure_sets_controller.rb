class MeasureSetsController < ApplicationController
  before_filter :require_user
  before_filter :find_deal

  def create
    set = @deal.measure_sets.build(params[:measure_set])
    set.author = current_user
    if set.save
      flash[:notice] = "Successfully created a measure set"
    end
    redirect_to @deal
  end

  def update
    set = @deal.measure_sets.find(params[:id])
    if set.update_attributes(params[:measure_set])
      flash[:notice] = "Successfully updated a measure set"
    end
    redirect_to @deal
  end
  
  def destroy
    set = @deal.measure_sets.find(params[:id])
    set.destroy
    flash[:notice] = "Successfully removed a measure set"
    redirect_to @deal
  end
  
  private
  
  def find_deal
    @deal = Deal.find(params[:deal_id])
  end
end
