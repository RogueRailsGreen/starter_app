class Story < ActiveRecord::Base

  validates_presence_of :in_order_to, :as_a, :i_want_to, :project
  belongs_to :status
  belongs_to :project
  has_many :comments
  validates_numericality_of :business_value, only_integer: true, greater_than: 0,
                            less_than: 6, message: "is not a number between 0 and 5"
  validates_numericality_of :complexity_value, only_integer: true, greater_than: 0,
                            less_than: 6, message: "is not a number between 0 and 5"
end
