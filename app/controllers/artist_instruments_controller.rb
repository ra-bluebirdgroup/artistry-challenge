class ArtistInstrumentsController < ApplicationController
  before_action :find_artist_instrument, only: [:show, :edit, :update, :delete]

  def new
   @artist_instrument = ArtistInstrument.new
  end

  def create
   @artist_instrument = ArtistInstrument.new(artist_instrument_params)

   if @artist_instrument.save
     redirect_to artist_path(@artist_instrument.artist_id)
   else
     flash[:errors] = @artist_instrument.errors.full_messages
     render 'new'
   end

  end

  def show

  end

  private

  def find_artist_instrument
    @artist_instrument = ArtistInstrument.find(params[:id])
  end

  def artist_instrument_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end
end
