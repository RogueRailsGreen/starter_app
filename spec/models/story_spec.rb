require 'spec_helper'

describe Story do
  it "should have error if required field is not present" do
    story = Story.new()
    story.should_not be_valid
    story.errors[:in_order_to].should_not be_empty
    story.errors[:as_a].should_not be_empty
    story.errors[:i_want_to].should_not be_empty
  end

  describe "business_value validations" do
  	it "should be a number" do
      FactoryGirl.build(:story, business_value: 'not a number').should_not be_valid
  	end
    it "should be invalid when less than 1" do
      FactoryGirl.build(:story, business_value: 0).should_not be_valid
    end
    it "should be less than 6" do
      FactoryGirl.build(:story, business_value: 6).should_not be_valid
    end
    it "should be valid when valid" do
      FactoryGirl.build(:story, business_value: 3).should be_valid
    end  	
  end
  describe "complexity_value validations" do
    it "should be a number" do
      FactoryGirl.build(:story, complexity_value: 'not a number').should_not be_valid
    end
    it "should be invalid when less than 1" do
      FactoryGirl.build(:story, complexity_value: 0).should_not be_valid
    end
    it "should be less than 6" do
      FactoryGirl.build(:story, complexity_value: 6).should_not be_valid
    end
    it "should be valid when valid" do
      FactoryGirl.build(:story, complexity_value: 3).should be_valid
    end   
  end
end
