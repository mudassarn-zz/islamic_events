require 'spec_helper'

describe SpeakersController do

  describe "GET 'all'" do
    it "returns http success" do
      get 'all'
      response.should be_success
    end
  end

end
