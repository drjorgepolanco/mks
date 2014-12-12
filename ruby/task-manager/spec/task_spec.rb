require 'spec_helper'

describe 'Task' do
	let(:project) { TM::Project.new("The Project Name") }
	let(:task) { TM::Task.new("Task One", priority: 3) }

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  describe '#initialize' do
	  it "starts with a description" do
	  	expect(task.description).to eq("Task One")
	  end

	  it "belongs to a project" do
	  	expect(task.project_id).to eq(1)
	  end

	  it "starts with a priority number" do
	  	expect(task.priority).to eq(3)
	  end

	  it "starts with status 'incomplete'" do
	  	expect(task.status).to eq('incomplete')
	  end

	  it "has its own id" do
	  	expect(task.id).to be_a(Fixnum)
	  end

	  it "has a creation date and time" do
	  	created_at = Time.now
	  	expect(Time).to receive(:now).and_return(created_at)
	  	expect(task.created_at).to eq(created_at)
	  end
	end
end