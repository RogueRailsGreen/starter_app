FactoryGirl.define do
  factory :comment do
    body { "Body" }
    association :story
  end
end  
