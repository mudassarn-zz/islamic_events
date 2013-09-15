class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
  end
  def new
    @speaker = Speaker.new
  end
  def create

    @speaker = Speaker.new(params[:speaker]) # This is not final implementation
    if @speaker.save
      flash[:success] = "Speaker saved successfully"
      redirect_to @speaker
    else
      render 'new'
    end
  end
  def show
    @speaker = Speaker.find(params[:id])
  end
  def edit
    @speaker = Speaker.find(params[:id])
  end
end
