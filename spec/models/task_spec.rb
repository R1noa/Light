require 'rails_helper'



RSpec.describe Task, type: :model do
  before(:all) do
    @task = Task.new(title: "my new title")
  end

 
 it "should do something" do
		(1+1).should == 2
	end

  it "validates the name and makes sure it's not empty" do
  	  task = Task.new(title:'')
      task.valid?
      task.errors[:title].should_not be_empty
  end

  it 'we got what we need?' do
    expect(@task.title).to eq("my new title")
  end

  it 'is not valid with a title longer than 100 symbols' do
    task = Task.new(title: 'a' * 101)
    end
end
