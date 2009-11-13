class DealsController < ApplicationController
  before_filter :require_user, :only => [:edit, :update]
  before_filter :get_deal, :except => [:index, :new, :create]
  
  def index
    @deals = Deal.paginate(
      :order    => 'updated_at DESC',
      :page     => params[:page],
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
      redirect_to @deal
    else
      render 'new'
    end
  end
  
  def edit
    
  end
  
  def update
    if @deal.update_attributes(params[:deal])
      flash[:notice] = "Successfully updated a deal"
      redirect_to @deal
    else
      render 'edit'
    end
  end
  
  private
  
  def get_deal
    @deal = Deal.find(params[:id])
  end
end
