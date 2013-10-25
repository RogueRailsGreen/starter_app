class AddStatusToStory < ActiveRecord::Migration
  def change
    add_column :stories, :status_id, :integer
  end
end
