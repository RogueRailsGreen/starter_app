FactoryGirl.define do
  factory :story do
    in_order_to {"Do Whatever"}
    as_a {"user"}
    i_want_to {"Do something"}
    association :status, factory: :status
  end
end  