class AddOptionalToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :started, :bool
    add_column :tasks, :finished, :bool
  end
end
