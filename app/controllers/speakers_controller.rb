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
  def update
    @speaker = Speaker.find(params[:id])


    if @speaker.update_attributes(params[:speaker])
      flash[:success] = "Speaker Updated Successfully"
      redirect_to speaker_path(@speaker)
    else
      render 'edit'
    end

  end
end
