require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../tennis'

describe Tennis::Game do
  let(:game) { Tennis::Game.new }

  describe '.initialize' do
    it 'creates two players' do
      expect(game.player1).to be_a(Tennis::Player)
      expect(game.player2).to be_a(Tennis::Player)
    end

    it 'sets the opponent for each player' do
      expect(game.player1.opponent).to eq(game.player2)
      expect(game.player2.opponent).to eq(game.player1)
    end
  end

  describe '#wins_ball' do
    it 'increments the points of the winning player' do
      game.wins_ball(game.player1)
      expect(game.player1.points).to eq(1)

      game.wins_ball(game.player2)
      expect(game.player2.points).to eq(1)

      game.wins_ball(game.player2)
      expect(game.player2.points).to eq(2)
    end
  end

  describe '#score_report' do
    context 'when none of the player has scored any points' do
      it "returns 'love' for both players" do
        game.player1.points = 0
        game.player2.points = 0
        expect(game.score_report).to eq("Player One: 'love'. Player Two: 'love'.")
      end
    end

    context "when one of the players has score one point" do
      it "returns 'fifteen' for the scoring player and 'love' for the looser" do
        game.player1.points = 1
        game.player2.points = 0
        expect(game.score_report).to eq("Player One: 'fifteen'. Player Two: 'love'.")
      end
    end

    context "when both players have the same score" do
      it "returns deuce" do
        game.player1.points = 3
        game.player2.points = 3
        expect(game.score_report).to eq("The score is deuce!")
      end
    end

    context "when a player has enough points to win, but not two more than the opponent" do
      it "returns ad-in" do
        game.player1.points = 4
        game.player2.points = 3
        expect(game.score_report).to eq("The score is ad-in.")
      end
    end

    context "when an opponent has enough points to win, but not two more than the player" do
      it "returns ad-out" do
        game.player1.points = 7
        game.player2.points = 8
        expect(game.score_report).to eq("The score is ad-out.")
      end
    end

    context "when the player has enough points to win and two more than the opponent" do
      it "declares the server as the winner" do
        game.player1.points = 4
        game.player2.points = 2
        expect(game.score_report).to eq("Game Over! The server wins!")
      end
    end

    context "when the opponent has enough points to win and two more than the player" do
      it "declares the receiver as the winner" do
        game.player1.points = 2
        game.player2.points = 4
        expect(game.score_report).to eq("Game Over! The receiver wins!")
      end
    end
  end
end

describe Tennis::Player do
  let(:player) do
    player = Tennis::Player.new(serving: true)
    player.opponent = Tennis::Player.new(serving: false)

    return player
  end

  describe '.initialize' do
    it 'sets the points to 0' do
      expect(player.points).to eq(0)
    end 
  end

  describe '#record_won_ball!' do
    it 'increments the points' do
      player.record_won_ball!

      expect(player.points).to eq(1)
    end
  end

  describe '#score' do
    context 'when points is 0' do
      it 'returns love' do
        expect(player.score).to eq('love')
      end
    end
    
    context 'when points is 1' do
      it 'returns fifteen' do
        player.points = 1

        expect(player.score).to eq('fifteen')
      end 
    end
    
    context 'when points is 2' do
      it 'returns thirty' do
        player.points = 2

        expect(player.score).to eq('thirty')
      end
    end
    
    context 'when points is 3' do
      it 'returns forty' do
        player.points = 3

        expect(player.score).to eq('forty')
      end
    end

    context "when a player reaches 4 points and the other has less than 3" do
      it "declares a winner and ends the game" do
        player.points = 4

        expect(player.score).to eq("We have a winner! The Game is Over!")
      end
    end

    context "when the player is ahead in the game" do
      it "returns Ad-in" do
        player.points = 7
        player.opponent.points = 6

        expect(player.score).to eq('Ad-in')
      end
    end

    context "when the opponent is ahead in the game" do
      it "returns Ad-out" do
        player.points = 6
        player.opponent.points = 7

        expect(player.score).to eq('Ad-out')
      end
    end

    context "when both players have the same score" do
      it "returns deuce" do
        player.points = 3
        player.opponent.points = 3

        expect(player.score).to eq('Deuce')
      end
    end
  end
end