class Story < ActiveRecord::Base

  validates_presence_of :in_order_to, :as_a, :i_want_to, :project
  belongs_to :status
  belongs_to :project

end
