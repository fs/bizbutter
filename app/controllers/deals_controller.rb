class DealsController < ApplicationController
  before_filter :require_user, :only => [:edit, :update]
  before_filter :get_deal, :except => [:index, :new, :create]
  
  def index
    
    @deals = Deal.all(
      :conditions => [
        'user_id = ? OR id IN (?)', current_user ? current_user.id : nil, session[:deals]
      ],
      :order => 'published DESC, updated_at DESC'
    ).paginate(
      :page => params[:page],
      :per_page => Deal::DEALS_PER_PAGE
    )
  end
  
  def show
  end
  
  def new
    @deal = Deal.new
  end
  
  def create
    @deal = Deal.new(params[:deal])
    @deal.user_id = current_user.id if current_user
    
    if @deal.save
      if !current_user
        session[:deals] ||= []
        session[:deals] << @deal.id
      end
      flash[:notice] = "Successfully created a deal"
      redirect_to deals_path
    else
      render 'new'
    end
  end
  
  def edit
    
  end
  
  def update
    if @deal.update_attributes(params[:deal])
      redirect_to deals_path
    else
      render 'edit'
    end
  end
  
  private
  
  def get_deal
    @deal = Deal.find(params[:id])
  end
  
end
