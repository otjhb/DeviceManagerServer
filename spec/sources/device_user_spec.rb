require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "DeviceUser" do
  it_should_behave_like "SpecHelper" do
    before(:each) do
      setup_test_for DeviceUser,'testuser'
    end

    it "should process DeviceUser query" do
      pending
    end

    it "should process DeviceUser create" do
      pending
    end

    it "should process DeviceUser update" do
      pending
    end

    it "should process DeviceUser delete" do
      pending
    end
  end  
end