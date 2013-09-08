require 'spec_helper'

describe Event do
  before do
    @speaker= Speaker.new
    @speaker.name="Mudassar"
    @speaker.profile="This is my first talk"
    @speaker.save

    @event = @speaker.events.build
    @event.topic="Purpose of Life"
    @event.purpose="This short talk will discuss purpose of life"
    @event.street_address_line1="Lahore University of Management Sciences"
    @event.street_address_line2=""
    @event.city="Lahore"
    @event.province="Punjab"
    @event.start_date=Time.new(2014, 7,1,10)
    @event.duration=2
    #@event.speaker_id = @speaker.id

  end

  subject {@event}

  it { should respond_to(:topic) }
  it { should respond_to(:purpose) }
  it { should respond_to(:street_address_line1) }
  it { should respond_to(:street_address_line2) }
  it { should respond_to(:city) }
  it { should respond_to(:province) }
  it { should respond_to(:start_date) }
  it { should respond_to(:duration) }
  it { should respond_to(:speaker_id) }
  it { should respond_to(:speaker) }
  its(:speaker) {should eq @speaker}

  describe "when topic is blank" do
    before {@event.topic=" "}
    it { should_not be_valid}
  end

  describe "when purpose is blank" do
    before {@event.purpose=" "}
    it { should_not be_valid}
  end

  describe "when street address line 1 is blank" do
    before {@event.street_address_line1=" "}
    it { should_not be_valid}
  end

  describe "when city is blank" do
    before {@event.city=" "}
    it { should_not be_valid}
  end

  describe "when province is blank" do
    before {@event.province=" "}
    it { should_not be_valid}
  end

  describe "when start date and time is nil" do
    before {@event.start_date=nil}
    it { should_not be_valid}
  end

  #describe "when start date or time in past" do
  #  before {@event.start_date=Time.new(2008)}
  #  it {should_not be_valid}
  #end

  describe "when duration is 0" do
    before {@event.duration=0}
    it { should_not be_valid}
  end

  describe "when duration is negative" do
    before {@event.duration=-10}
    it { should_not be_valid}
  end

  describe "when event does not have speaker_id" do
    before {@event.speaker_id=nil}
    it {should_not be_valid}
  end
end
