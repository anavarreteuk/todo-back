class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :instruction
      t.string :beforeImage
      t.string :afterImage
      t.string :location
      t.string :occurance

      t.timestamps
    end
  end
end
