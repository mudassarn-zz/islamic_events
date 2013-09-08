class RemoveStartTimeFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :start_time
  end

  def down
    add_column :events, :start_time, :datetime
  end
end
