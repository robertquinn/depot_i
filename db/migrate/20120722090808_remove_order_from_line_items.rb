class RemoveOrderFromLineItems < ActiveRecord::Migration
  def up
    remove_column :line_items, :order
  end

  def down
    add_column :line_items, :order, :integer
  end
end
