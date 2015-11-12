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
    play_quiz
  end

  def play_quiz
    until game.finished?
      view.display_state(game.get_question)
      guess = view.gets_user_input
      result = game.user_guess(guess)
  end


end