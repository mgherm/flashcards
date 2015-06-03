class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end
  def show
    @deck = Deck.find(params[:id])
  end
  def new

    @deck = Deck.new
  end
  def create
    @deck = Deck.new(params.require(:deck).permit(:name))
    # see http://blog.trackets.com/2013/08/17/strong-parameters-by-example.html
    @deck.save
    redirect_to "/decks"
  end
end