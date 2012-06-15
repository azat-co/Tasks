class AddTaskTypes < ActiveRecord::Migration
  def up
    create_table :task_types do |t|
      t.string :name
      t.text :display_name
      t.timestamps
    end
    add_column :tasks, :task_type_id, :integer
    add_column :tasks, :description, :text
    create_table :fields do |t|
      t.references :task_type
      t.string :name
      t.string :kind
      t.string :options
      t.timestamps
    end          
    create_table :values do |t|
      t.references :task
      t.references :field
      t.string :value
      t.timestamps
    end
  end
  
  def down
    drop_table :values
    drop_table :fields
    remove_column :tasks, :description
    remove_column :tasks, :task_type_id
    drop_table :task_types
  end
  

end
