class MultiTaskController < ApplicationController
  def type
    @types=TaskType.all
  end

  def form
    task_type_id=params["task_type"]
    if TaskType.exists?(task_type_id)
      @task_type=TaskType.find_by_id(task_type_id)      
      @fields=Field.find_all_by_task_type_id(task_type_id)
      @fields = [@fields] unless @fields.respond_to?(:each)
      puts @fields
    else
      task_type_id=params["task_type_id"] #from hidden field
      puts "****************"+params["due_at"]
      #DateTime.strptime("06/29/2012 10:00:00 PM -07:00", "%m/%d/%Y %I:%M:%S %p %z").to_date
      puts "****************"+DateTime.strptime(params["due_at"]+" -07:00", "%m/%d/%Y %I:%M:%S %p %z").to_s
      task=Task.create({:task_type_id=>task_type_id, :title=>params["task_title"], :due_at=>DateTime.strptime(params["due_at"]+" -07:00", "%m/%d/%Y %I:%M:%S %p %z") })
      # puts "**************"+strtotime(params["due_at"])
      # puts "****************"+params["task"].to_s
      # puts "****************"+params["due_at"].to_s
      fields=Field.find_all_by_task_type_id(task_type_id)
      fields.each do |f|
        value=Value.create({
          :task_id=>task.id,
          :field_id=>f.id,
          :value=>params[f.name]
        })
        puts value
      end
      
      render "done"
    end
    
  end

  
end
