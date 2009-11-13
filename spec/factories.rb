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

Factory.sequence :email do |n|
  "user#{n}@example.com"
end

Factory.define :user do |user|
  user.email                 { Factory.next :email }
  user.password              { "password" }
  user.password_confirmation { "password" }
end

Factory.define :email_confirmed_user, :parent => :user do |user|
  user.email_confirmed { true }
end
