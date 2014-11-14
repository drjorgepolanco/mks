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

    def score_report
      if deuce?
        return "The score is deuce!"
      elsif player1.points >= 4 || player2.points >= 4
        if ad_in?
          return "The score is ad-in."
        elsif ad_out?
          return "The score is ad-out."
        elsif server_wins?
          return "Game Over! The server wins!"
        else
          return "Game Over! The receiver wins!"
        end
      else
        return "Player One: '#{player1.score}'. Player Two: '#{player2.score}'."
      end
    end

    private

    def deuce?
      player1.points >= 3 && player1.points == player2.points
    end

    def ad_in?
      player1.points >= 4 && player1.points == (player2.points + 1)
    end

    def ad_out?
      player2.points >= 4 && player1.points == (player2.points - 1)
    end

    def server_wins?
      player1.points >= (player2.points + 2)
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
      return 'love'     if @points == 0
      return 'fifteen'  if @points == 1
      return 'thirty'   if @points == 2
      return 'forty'    if @points == 3
    end
  end
end