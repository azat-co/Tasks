FactoryGirl.define do
  sequence :task_title do |n|
    "Task #{n}"
  end
  
  factory :task do
    title { Factory.next(:task_title) }
    due_at { 30.minutes.from_now }
  end
end