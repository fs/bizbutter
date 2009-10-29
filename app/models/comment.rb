class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :deal
  
  def editable_by? (user)
    user && user.id == self.user.id
  end
    
end
