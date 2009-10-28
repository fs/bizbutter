class Measure < ActiveRecord::Base
  belongs_to :set, :class_name => "MeasureSet"
  belongs_to :author, :class_name => "User"

  validates_presence_of :title, :value, :author_id
  validates_inclusion_of :published, :in => [true, false]
end
