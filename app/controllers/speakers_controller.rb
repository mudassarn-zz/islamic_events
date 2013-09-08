class SpeakersController < ApplicationController
  def all
    @speakers = Speaker.all
  end
end
