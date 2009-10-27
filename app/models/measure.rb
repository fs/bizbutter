class Measure < ActiveRecord::Base
  belongs_to :set, :class_name => "MeasureSet"
  belongs_to :author

  validates_presence_of :set_id, :title, :value, :author_id
  validates_inclusion_of :published, :in => [true, false]
end
