require 'spec_helper'

describe 'Task' do
	let(:project) { TM::Project.new("The Project Name") }
	let(:task) { TM::Task.new("Task One", 3) }

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  describe '#initialize' do
	  it "starts with a description" do
	  	expect(task.description).to eq("Task One")
	  end

	  it "belongs to a project" do
	  	project.add_task("Task One", 3)
	  	expect(task.project_id).to eq(1)
	  end

	  it "starts with a priority number" do
	  	expect(task.priority).to eq(3)
	  end

	  it "starts with status 'incomplete'" do
	  	expect(task.status).to eq('incomplete')
	  end
	end
end