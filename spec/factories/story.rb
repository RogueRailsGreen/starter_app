FactoryGirl.define do
  factory :story do
    in_order_to {"Do Whatever"}
    as_a {"user"}
    i_want_to {"Do something"}
    business_value {3}
    complexity_value {1}
    association :status, factory: :status
    association :project
  end
end  