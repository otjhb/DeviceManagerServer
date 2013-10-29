require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Department" do
  it_should_behave_like "SpecHelper" do
    before(:each) do
      setup_test_for Department,'testuser'
    end

    it "should process Department query" do
      pending
    end

    it "should process Department create" do
      pending
    end

    it "should process Department update" do
      pending
    end

    it "should process Department delete" do
      pending
    end
  end  
end