class MeasureSetsController < ApplicationController
  before_filter :require_user

  def create
    deal = Deal.find(params[:deal_id])
    measure_set = deal.measure_sets.build(params[:measure_set])
    measure_set.author = current_user

    measure_set.measures.delete_if {|m| m.title.blank? || m.value.blank?}
    measure_set.measures.each {|m| m.author = current_user}

    unless measure_set.save
      flash[:error] = 'measure_set not saved'
    end

    redirect_to deal_path(deal)
  end

  def edit
    @measure_set = MeasureSet.find(params[:id])
    3.times { @measure_set.measures.build }
  end

  def update
    measure_set = MeasureSet.find(params[:id])
    measure_set.attributes = params[:measure_set]

    measure_set.measures.delete_if {|m| m.title.blank? || m.value.blank?}
    measure_set.measures.each {|m| m.author = current_user if m.author.nil? }

    unless measure_set.save
      flash[:error] = 'measure_set not saved'
    end

    redirect_to deal_path(measure_set.deal)
  end
end
