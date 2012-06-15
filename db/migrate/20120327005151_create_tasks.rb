class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks, :force => true do |t|
      t.string :title
      t.datetime :due_at
      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end