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
    @deck.save
    redirect_to "/decks"
  end
end