class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end
  def show
    @deck = Deck.find(params["id"])
  end
  def new
    @deck = Deck.new
  end
end