class MeasuresController < ApplicationController
  before_filter :require_user

  def create
    deal = Deal.find(params[:deal_id])
    measure_set = deal.measure_sets.find(params[:measure_set_id])
    measure = measure_set.measures.new(params[:measure])
    measure.author = current_user
    measure.save
  end

  def update
    measure = Measure.find(params[:id])
    measure.update_attributes(params[:measure])
  end
end
