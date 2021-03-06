require_relative ('controller')

class View

  def gets_user_input
    gets.chomp
  end

  def clear_screen
    print "\e[H"
    print "\e[2J"
  end

  def greeting
    clear_screen
    puts "\n  Do you know your U.S. State capitals?\n\n  Ready to find out?\n  Press enter!"
    gets_user_input
  end

  def display_state(question)
    puts "\n\n  What is the capital of #{question.state}?"
  end

  def correct_answer
    puts "\n\n  Correct!"
  end

  def incorrect_answer(question)
    puts "\n\n  Incorrect!\n\n  The correct answer is #{question.capital}"
  end

  def show_score(score)
    puts "You got #{score} correct!\n\n Would you like to play again?\n\n Y or N?"
  end

  def closing
    puts "Thanks for playing!"
  end
end