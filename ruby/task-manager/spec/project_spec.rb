require 'spec_helper'

describe 'Project' do
	let(:project) { TM::Project.new("Project One")}
  
  it "exists" do
    expect(TM::Project).to be_a(Class)
  end

  it "is created with a name" do
    expect(project.name).to eq("Project One")
  end

  it "automatically gets an id upon creation" do
    expect(project.id).to be_a(Fixnum)
  end

  describe '#add_task' do
    it "can add tasks to an existing project" do
      project.add_task("Do first thing", priority: 3)
      expect(project.task_list.count).to eq(1)
    end
  end

  describe '#mark_as_complete' do
    it "marks the task as complete" do
      new_task = project.add_task("Do first thing", priority: 3)
      single_task = new_task.first
      id = single_task.id
      project.mark_as_complete(id)
      expect(single_task.status).to eq('complete')
    end
  end
end