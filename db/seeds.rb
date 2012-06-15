# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

TaskType.create([
  {:name => 'Shopping'},
  {:name => 'Donation Pickup'},
  {:name => 'Moving Help'},
  {:name => 'House Cleaning'},
  {:name => 'Other'}  
  ])

Field.create ([
  {   :task_type_id=>1,    :name=>'Name',     :kind=>'string'  },
  {:task_type_id=>1, :name=>'List', :kind=>'text'},
  {:task_type_id=>1, :name=>'Expected Amount', :kind=>'number'},
  
  {:task_type_id=>2, :name=>'Size', :kind=>'options', :options=>'bike|car|truck'},
  {:task_type_id=>2, :name=>'Address', :kind=>'text'},
  {:task_type_id=>2, :name=>'Receipt required', :kind=>'boolean'},
  
  {:task_type_id=>3, :name=>'Number of people required', :kind=>'number'},
  {:task_type_id=>3, :name=>'Address', :kind=>'text'},

  {:task_type_id=>4, :name=>'Number of bathrooms', :kind=>'number'},
  {:task_type_id=>4, :name=>'Address', :kind=>'text'},
  {:task_type_id=>4, :name=>'Type of cleaning', :kind=>'options', :options=>'light|normal|heavy'},
  
  {:task_type_id=>5, :name=>'Name', :kind=>'string'},
  {:task_type_id=>5, :name=>'Description', :kind=>'text'},
  
  
  ])

# task_type1=Taskkind.create({
#   :name => "shopping"
# })
# 
# task_type1.field

# Moving Help: Number of people required (integer), Address
# House Cleaning: Address, Number of bathrooms (integer), Type of cleaning (options: light, normal, heavy)
# Other: Title (string), Description (text)
