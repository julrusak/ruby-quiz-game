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
    game.create_questions
    play_quiz
  end

  def play_quiz
    view.clear_screen
    until game.finished?
      view.display_state(game.get_question)
      guess = view.gets_user_input
      result = game.user_guess(guess)
      if result == true
        view.correct_answer
        game.correct_guess
        sleep 1
      else
        view.incorrect_answer(game.question)
        puts game.available
        sleep 2
      end
      view.clear_screen
    end
  end


end