require_relative ('view')
require_relative ('model')


class QuizGame
attr_reader :view, :game

  def initialize
    @view = View.new
    @game = Game.new
  end

  def start
    view.clear_screen
    view.greeting
    game.setup_game
  end


end