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
end