require_relative ('controller')

class View

  def clear_screen
    print "\e[H"
    print "\e[2J"
  end

end