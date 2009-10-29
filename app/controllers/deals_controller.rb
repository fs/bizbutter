class DealsController < ApplicationController
  before_filter :require_user, :only => [:new, :create, :edit, :update]
  before_filter :get_deal, :except => [:index, :new, :create]
  
  def index
    @deals = Deal.all :order => 'published DESC, updated_at DESC'
  end
  
  def show
    @comment = @deal.comments.build
    @measure_set = @deal.measure_sets.build
    3.times { @measure_set.measures.build }
  end
  
  def new
    @deal = Deal.new
  end
  
  def create
    @deal = current_user.deals.build(params[:deal])
    
    if @deal.save
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
