require 'rspec'
require 'game'
require 'byebug'
require 'player'

RSpec.describe Game do
  let(:player) {double("John", hand:[])}
  subject(:game) {Game.new(player)}

  describe '#initialize' do
    it "expects deck to be shuffled" do
      expect(game.deck).to_not eq(game.deck.sort)
    end

    it "makes instance variable first player in the game" do
      expect(game.current_player).to eq(game.players[0])
    end

    it "sets pot to 0" do
      expect(game.pot).to eq(0)
    end

  end

  describe '#deal_cards' do
    it 'should give 5 cards to each player' do
      # allow(:player).to receive(:hand)
      game.deal_cards
      expect(game.players[0].hand.length).to eq(5)
    end
  end

end
