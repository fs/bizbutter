class Deal < ActiveRecord::Base
  
  DEALS_PER_PAGE = 20
  
  validates_presence_of :title
  #validates_presence_of :user_id

  belongs_to :user

  has_many :measure_sets, :attributes => true
  has_many :comments
end
