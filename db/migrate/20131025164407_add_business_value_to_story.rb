class AddBusinessValueToStory < ActiveRecord::Migration
  def change
    add_column :stories, :business_value, :integer
  end
end
