class MeasureSetsController < ApplicationController
  before_filter :require_user

  def create
    deal = Deal.find(params[:deal_id])
    measure_set = deal.measure_sets.new(params[:measure_set])
    measure_set.author = current_user
    unless measure_set.save
      flash[:error] = 'measure_set not saved'
    end
    redirect_to deal_path(deal)
  end

  def update
    measure_set = MeasureSet.find(params[:id])
    measure_set.update_attributes(params[:measure_set])
  end
end
