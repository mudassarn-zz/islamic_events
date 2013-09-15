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
    it {should have_content ("Create Speaker")}
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

  describe "update speaker_page" do
    let (:speaker) {FactoryGirl.create(:speaker)}
    let (:new_name) {"My New Name"}
    let (:new_profile) {"My New Profile"}

    before do
      speaker.save
      visit edit_speaker_path(speaker)
    end
    it {should have_content("Edit Speaker")}

    describe "with new name and profile" do

      before do
        fill_in "Name", with: new_name
        fill_in "Profile", with: new_profile
        click_button "Update Speaker"
      end

      it "should update speaker name on redirected page" do
        expect(page).to have_content(new_name)
        #subject {modified_speaker.name}
        #expect(modified_speaker.name).eq new_name
      end

      it "should update speaker profile on redirected page" do
        expect(page).to have_content(new_profile)
        #expect(modified_speaker.profile).eq new_purpose
      end

      let (:modified_speaker) {Speaker.find(speaker.id) }

      it "should update name in the database" do
        expect(modified_speaker.name).to eq(new_name)
      end
      it "should update profile in the database" do
        expect(modified_speaker.profile).to eq(new_profile)
      end

    end


  end
end
