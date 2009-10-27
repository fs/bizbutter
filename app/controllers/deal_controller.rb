class DealController < ApplicationController
  before_filter :require_user, :only => [:new, :create, :edit, :save]
  before_filter :get_deal, :except => [:index]
  
  def index
    @deals = Deal.all :order => 'published DESC, updated_at DESC'
  end
  
  def show
    
  end
  
  def new
    
  end
  
  def create
    
  end
  
  def edit
    
  end
  
  def save
    if @deal.update_attributes(params[:deal])
      redirect_to deal_path
    else
      render 'edit'
    end
  end
  
  private
  
  def get_deal
    @deal = Deal.find(params[:id])
  end
  
end
