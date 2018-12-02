class AddIsActiveToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :is_active, :boolean, :default => true
  end
end
