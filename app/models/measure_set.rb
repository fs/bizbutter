class MeasureSet < ActiveRecord::Base
  belongs_to :deal
  belongs_to :author, :class_name => "User"

  has_many :measures, :foreign_key => 'set_id'

  validates_presence_of :deal_id, :title, :author_id
  validates_inclusion_of :published, :in => [true, false]

  accepts_nested_attributes_for :measures, :allow_destroy => true
end
