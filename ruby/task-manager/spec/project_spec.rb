require 'spec_helper'

describe 'Project' do
	let(:project) { TM::Project.new("Project One")}
  
  it "exists" do
    expect(TM::Project).to be_a(Class)
  end

  it "is created with a name" do
    expect(project.name).to eq("Project One")
  end

  xit "automatically gets an id upon creation" do
    expect(project.id).to be_a(Fixnum)
  end

  xit "can add tasks to an existing project" do
    task = TM::Task.new("Do first thing", 'high', 1)
    project.new_task(task)
    expect(project.tasks.first).to eq(task)
  end
end