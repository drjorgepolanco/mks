module Tennis
  class Game
    attr_accessor :player1, :player2

    def initialize
      @player1 = Player.new
      @player2 = Player.new

      @player1.opponent = @player2
      @player2.opponent = @player1
    end

    def wins_ball(winner)
      winner.record_won_ball!
    end
  end

  class Player
    attr_accessor :points, :opponent

    def initialize
      @points = 0
    end

    def record_won_ball!
      @points += 1
    end

    def score
      return 'love' if @points == 0
      return 'fifteen' if @points == 1
      return 'thirty' if @points == 2
      return 'forty' if @points == 3
    end
  end
end