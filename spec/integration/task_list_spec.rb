require 'integration_helper'

describe "Task List" do
  context "when no tasks" do
    it "should ask to create a task" do
      visit "/"
      click_link "Create New Task"
      current_path.should == "/tasks/new"
    end
  end
  
  context "when have tasks" do
    before(:each) do
      Factory(:task, :title => "Task Number One")
      Factory(:task, :title => "Task Number Two")
    end
    it "should show a list of tasks" do
      visit "/"
      page.should have_content("Task Number One")
      page.should have_content("Task Number Two")
    end
  end

end