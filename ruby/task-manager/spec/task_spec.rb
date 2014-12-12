require 'spec_helper'

describe 'Task' do
	let(:project) { TM::Project.new("The Project Name") }
	let(:task) { TM::Task.new("Task One") }

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end
  describe '#initialize' do
	  it "starts with a description" do
	  	expect(task.description).to eq("Task One")
	  end

	  it "belongs to a project" do
	  	project.add_task(task)
	  	expect(task.project_id).to eq(1)
	  end
	end
end