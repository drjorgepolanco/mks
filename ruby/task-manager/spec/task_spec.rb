require 'spec_helper'

describe 'Task' do
	let(:task) { TM::Task.new("Task One")}

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  it "starts with a description" do
  	expect(task.description).to eq("Task One")
  end
end