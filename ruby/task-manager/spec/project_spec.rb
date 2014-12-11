require 'spec_helper'

describe 'Project' do
  it "exists" do
    expect(TM::Project).to be_a(Class)
  end

  it "can be created with a name" do
  	project = Project.new("Weight loss")

  	expect(project.name).to eq("Weight loss")
  end
end