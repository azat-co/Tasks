class Value < ActiveRecord::Base
  belongs_to :field
  belongs_to :task
end
