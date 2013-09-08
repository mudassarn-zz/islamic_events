require 'spec_helper'

describe Speaker do
  before do
    @speaker = Speaker.new
    @speaker.name="Mudassar"
    @speaker.profile="This is a test profile"
  end

  subject {@speaker}


  it { should respond_to(:name) }
  it { should respond_to(:profile) }
  it { should respond_to(:events) }


  describe "when name and profile both are not blank" do
    it {should be_valid}
  end

  describe "when name is blank" do
    before { @speaker.name = " "}
    it {should_not be_valid}
  end

  #describe "when name contains numeric value" do
  #  before { @speaker.name = " Mudassar 123 Ab"}
  #  it {should_not be_valid}
  #end
  #
  #describe "when name contains special character value" do
  #  before { @speaker.name = " Mudassar _ Ab"}
  #  it {should_not be_valid}
  #end

  describe "when profile is blank" do
    before { @speaker.profile = " "}
    it {should_not be_valid}
  end

end
