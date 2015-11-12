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
    puts "\n Do you know your U.S. State capitals?\n\n Ready to find out?\n Press enter!"
  end
end