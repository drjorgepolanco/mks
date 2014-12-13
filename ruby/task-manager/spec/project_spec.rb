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
      project.add_task("Do first thing", 3)
      expect(project.task_list.count).to eq(1)
    end
  end

  describe '#mark_as_complete' do
    it "marks the task as complete" do
      new_task = project.add_task("Do first thing", 3)
      single_task = new_task.first
      id = single_task.id
      project.mark_as_complete(id)
      expect(single_task.status).to eq('complete')
    end
  end

  describe '#complete_tasks' do
    context "when there is only one task completed" do
      it "returns the complete task" do
        project.add_task("This is the first task", 3)
        project.add_task("This is the second task", 2, 'complete')
        project.add_task("This is the third task", 1)

        expect(project.complete_tasks.length).to eq(1)
        expect(project.complete_tasks).to eq([project.task_list[1]])
      end
    end

    context "when there are many tasks completed" do
      it 'retrieves a list of all completed tasks, sorted by creation date' do
        project.add_task("This is the first task", 3, 'complete')
        project.add_task("This is the second task", 2)
        project.add_task("This is the third task", 1, 'complete')
        project.add_task("This is the fourth task", 4)
        project.add_task("This is the fifth task", 5, 'complete')

        expect(project.complete_tasks.length).to eq(3)
        expect(project.complete_tasks).to eq([project.task_list[0], project.task_list[2], project.task_list[4]])
      end
    end
  end

  describe '#incomplete_tasks' do
    context "when there is only one incompleted task" do
      it "returns the incompleted task" do
        project.add_task("This is the first task", 3, 'complete')
        project.add_task("This is the second task", 2, 'complete')
        project.add_task("This is the third task", 1)

        expect(project.incomplete_tasks.length).to eq(1)
        expect(project.incomplete_tasks).to eq([project.task_list[2]])
      end
    end

    context "when there are many incompleted tasks with different priorities" do
      it 'retrieves a list of all incompleted tasks sorted by priority' do
        project.add_task("This is the first task", 3)
        project.add_task("This is the second task", 2, 'complete')
        project.add_task("This is the third task", 1)
        project.add_task("This is the fourth task", 4, 'complete')
        project.add_task("This is the fifth task", 5)

        expect(project.incomplete_tasks.length).to eq(3)
        expect(project.incomplete_tasks).to eq([project.task_list[2], project.task_list[0], project.task_list[4]])
      end
    end

    context "when there are many incompleted tasks with same priorities" do
      it 'retrieves a list of all incompleted tasks sorted by date' do
        project.add_task("This is the first task", 1)
        project.add_task("This is the second task", 2, 'complete')
        project.add_task("This is the third task", 1)
        project.add_task("This is the fourth task", 4, 'complete')
        project.add_task("This is the fifth task", 1)

        expect(project.incomplete_tasks.length).to eq(3)
        expect(project.incomplete_tasks).to eq([project.task_list[0], project.task_list[2], project.task_list[4]])
      end
    end
  end

  describe '#tasks' do
    it 'retrieves a list of all tasks' do
      project.add_task("This is the first task", 1)
      project.add_task("This is the second task", 2, 'complete')
      project.add_task("This is the third task", 1)
      project.add_task("This is the fourth task", 4, 'complete')
      project.add_task("This is the fifth task", 1)

      expect(project.tasks.count).to eq(5)
      expect(project.tasks).to eq([project.task_list[0], project.task_list[1], project.task_list[2], project.task_list[3], project.task_list[4]])
    end
  end
end