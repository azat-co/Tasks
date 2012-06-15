require 'spec_helper'

describe Task do
  it { should validate_presence_of :title }
  it { should validate_presence_of :due_at }
  
  it "should be able to create a new Task" do
    task = Task.new(:title => "Pickup my groceries", :due_at => 30.minutes.from_now)
    task.save.should be_true
    task.should_not be_new_record
  end
end