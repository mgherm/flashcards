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
  def edit
    @deck = Deck.find(params[:id])
  end
  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(params.require(:deck).permit(:name))
    redirect_to "/decks/#{@deck.id}"
  end
  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to "/decks"
  end
end