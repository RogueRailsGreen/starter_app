class Story < ActiveRecord::Base

  validates_presence_of :in_order_to, :as_a, :i_want_to, :project_id
  belongs_to :project
end
