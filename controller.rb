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

  def restart
    view.clear_screen
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
        sleep 2
      end
      view.clear_screen
    end
    view.show_score(game.score)
    choice = view.gets_user_input
      if choice.upcase == "Y"
        restart
      else
        view.clear_screen
        view.closing
      end
  end

end