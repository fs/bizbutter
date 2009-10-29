class User < ActiveRecord::Base
  include Clearance::User
  has_many :deals
  has_many :comments
  
end
