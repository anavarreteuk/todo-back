class CreateAddOptionalToTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :add_optional_to_tasks do |t|

      t.timestamps
    end
  end
end
