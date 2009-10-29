class Measure < ActiveRecord::Base
  belongs_to :set, :class_name => "MeasureSet"
  belongs_to :author, :class_name => "User"

  validates_presence_of :title, :value
end
