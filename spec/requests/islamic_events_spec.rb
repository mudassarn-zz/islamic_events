require 'spec_helper'

describe "IslamicEvents" do
  describe "GET /islamic_events" do
    #it "works! (now write some real specs)" do
    #  # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #  get islamic_events_index_path
    #  response.status.should be(200)
    #end
    it "should have 'Home' in contents" do
      visit '/islamic_events/home'
      expect(page).to have_content("Home")
    end
  end
end
