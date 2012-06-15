class Task < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :due_at
  
  has_many :values
  has_many :fields, :through => :values
  belongs_to :task_type
    
end