require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the StoriesHelper. For example:
#
# describe StoriesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe StoriesHelper do

  let(:mock_story) { Struct.new( :i_want_to, :in_order_to, :as_a ).new( 'Foo', 'Bar', 'Bam' ) }
  
  describe "#story_summary" do
    it "should build a continuous string from a story" do
      result = helper.story_summary( mock_story )

      result.should include( "In order to" )
      result.should include( "as a" )
      result.should include( "I want to" )
      result.should include( "Foo" )
      result.should include( "Bar" )
      result.should include( "Bam" )
    end
    
  end
end