require 'spec_helper'

describe "SpeakerPages" do
  subject {page}
  describe "profile page" do
    let(:speaker) {FactoryGirl.create(:speaker)}
    before {visit speaker_path(speaker)}
    it {should have_content(speaker.name)}
    it {should have_content(speaker.profile)}
  end
  describe "create speaker page" do
    before {visit new_speaker_path}

    describe "with invalid information" do
      it "should not create speaker" do
        expect { click_button "Create Speaker"}.not_to change(Speaker, :count)
      end
    end
    describe "with valid information" do
      before do
        fill_in "Name", with: "Test User"
        fill_in "Profile", with: "This is Test User profile"
      end
      it "should create user" do
        expect{click_button "Create Speaker"}.to change(Speaker, :count).by(1)
      end
    end

  end
end
