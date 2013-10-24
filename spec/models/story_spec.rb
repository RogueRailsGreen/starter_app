require 'spec_helper'

describe Story do
  it "should have error if required field is not present" do
    story = Story.new()
    story.should_not be_valid
    story.errors[:in_order_to].should_not be_empty
    story.errors[:as_a].should_not be_empty
    story.errors[:i_want_to].should_not be_empty
  end
end


