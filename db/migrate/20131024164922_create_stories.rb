class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :in_order_to
      t.string :as_a
      t.string :i_want_to

      t.timestamps
    end
  end
end
