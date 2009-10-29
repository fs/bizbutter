class HomeController < ApplicationController  
  def index
    @deals = Deal.all(
      :conditions => [
        'published = ?', true
      ],
      :order => 'published DESC, updated_at DESC'
    ).paginate(
      :page => params[:page],
      :per_page => Deal::DEALS_PER_PAGE
    )
  end
end
