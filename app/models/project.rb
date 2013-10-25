class Project < ActiveRecord::Base
	validates_presence_of :name, :description
	has_many :stories
end
