class GameController < ApplicationController
  def pick_move
    return ["rock","paper","scissors"].sample
  end

  def play_rock
    @computer_move = pick_move
    render("game/play_rock.html.erb")
  end

  def play_paper
    moves = ["rock","paper","scissors"]
    @computer_move = moves.sample
    if @computer_move == moves[0]
      @outcome = "You win"
    elsif @computer_move == moves[1]
        @outcome = "Tie"
        else
          @outcome ="win"
    end
    render("game/play_paper.html.erb")
  end

  def play_scissors
    moves = ["rock","paper","scissors"]
    @computer_move = moves.sample
    if @computer_move == moves[0]
      @outcome = "lose"
    elsif @computer_move == moves[1]
        @outcome = "Win"
        else
          @outcome ="Tie"
    end
    render("game/play_scissors.html.erb")
  end


end
