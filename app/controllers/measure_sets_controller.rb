class MeasureSetsController < ApplicationController
  before_filter :require_user

  def create
    deal = Deal.find(params[:deal_id])
    measure_set = deal.measure_sets.new(params[:measure_set])
    measure_set.author = current_user
    measure_set.save
  end

  def update
    measure_set = MeasureSet.find(params[:id])
    measure_set.update_attributes(params[:measure_set])
  end
end
