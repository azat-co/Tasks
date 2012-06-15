require 'integration_helper'

describe "Task Creation" do
  it "should submit a new task" do
    visit "/tasks/new"
    fill_in("Title", :with => "My First Task")
    click_button("Create Task")
    
    current_path.should == "/"
    page.should have_content("Task has been created.")
  end
  
  it "should render validations" do
    visit "/tasks/new"
    click_button("Create Task")
    page.should have_content("Title can't be blank")
  end
end