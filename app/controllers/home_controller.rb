class HomeController < ApplicationController  
  def index
    @deals = Deal.paginate(
      :conditions => {:published => true},
      :order    => 'updated_at DESC',
      :page     => params[:page],
      :per_page => Deal::DEALS_PER_PAGE
    )
  end
end
