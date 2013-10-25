class AddComplexityValueToStory < ActiveRecord::Migration
  def change
    add_column :stories, :complexity_value, :integer
  end
end
