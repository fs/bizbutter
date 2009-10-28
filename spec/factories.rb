Factory.define :measure_set do |f|
  f.deal_id 12
  f.author_id 23
  f.title 'some'
  f.published true
end

Factory.define :measure do |f|
  f.association :set, :factory => :measure_set
  f.author_id 32
  f.title 'some title'
  f.value 'some value'
  f.published true
end
