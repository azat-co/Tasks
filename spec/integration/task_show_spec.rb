require 'integration_helper'

describe "Task Show" do
  it "should give the details" do
    task = Factory(:task, :title => "Whatever", :due_at => Time.zone.parse("01/01/2014 12:14 PM"))
    
    visit "/tasks/#{task.to_param}"
    
    page.should have_content("Whatever")
    page.should have_content("01/01/2014 12:14")
  end
end
