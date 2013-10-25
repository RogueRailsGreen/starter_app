class Story < ActiveRecord::Base

  validates_presence_of :in_order_to, :as_a, :i_want_to
  belongs_to :status
end
