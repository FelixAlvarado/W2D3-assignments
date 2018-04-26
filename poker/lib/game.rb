require_relative 'deck.rb'
require_relative 'player.rb'
class Game

  attr_reader :deck, :pot, :players, :current_player

  def initialize(*players)
    @players = input_players(players)
    @deck = Deck.make_deck
    @pot = 0
    @current_player = players[0]
  end

  def input_players(players)
    hsh = []
      players.each_with_index do |player,idx|
        hsh << player
      end
      hsh
  end

  def deal_cards
    @deck = Deck.make_deck
    5.times do
    @players.each do |player|
      player.hand << @deck.pop
    end
    end
  end

end
