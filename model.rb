require_relative ('controller')

class Game
attr_reader :quiz, :question, :available
  def initialize
    @quiz = Quiz.new
    @question = nil
    @available = []
    @answered = []
  end

  def setup_game
    @quiz.capitals.each do |capital, state|
      @available << Capital.new(:capital => capital, :state => state)
    end
  end

  def get_question
    self.question = available.shift
  end
end

class Capital
attr_reader :state, :capital

  def initialize(args = {})
    @capital = args[:capital]
    @state = args[:state]
  end
end

class Quiz
attr_reader :capitals

  def initilize
    @capitals= {
      'Montgomery' => 'Alabama'
      'Juneau' => 'Alaska'
      'Phoenix' => 'Arizona'
      'Little Rock' => 'Arkansas'
      'Sacramento' => 'California'
      'Denver' => 'Colorado'
      'Hartford' => 'Connecticut'
      'Dover' => 'Delaware'
      'Tallahassee' => 'Florida'
      'Atlanta' => 'Georgia'
      'Honolulu' => 'Hawaii'
      'Boise' => 'Idaho'
      'Springfield' => 'Illinois'
      'Indianapolis' => 'Indiana'
      'Des Moines' => 'Iowa'
      'Topeka' => 'Kansas'
      'Frankfort' => 'Kentucky'
      'Baton Rouge' => 'Louisiana'
      'Augusta' => 'Maine'
      'Annapolis' => 'Maryland'
      'Boston' => 'Massachusetts'
      'Lansing' => 'Michigan'
      'Saint Paul' => 'Minnesota'
      'Jackson' => 'Mississippi'
      'Jefferson City' => 'Missouri'
      'Helena' => 'Montana'
      'Lincoln' => 'Nebraska'
      'Carson City' => 'Nevada'
      'Concord' => 'New Hampshire'
      'Trenton' => 'New Jersey'
      'Santa Fe' => 'New Mexico'
      'Albany' => 'New York'
      'Raleigh' => 'North Carolina'
      'Bismarck' => 'North Dakota'
      'Columbus' => 'Ohio'
      'Oklahoma City' => 'Oklahoma'
      'Salem' => 'Oregon'
      'Harrisburg' => 'Pennsylvania'
      'Providence' => 'Rhode Island'
      'Columbia' => 'South Carolina'
      'Pierre' => 'South Dakota'
      'Nashville' => 'Tennessee'
      'Austin' => 'Texas'
      'Salt Lake City' => 'Utah'
      'Montpelier' => 'Vermont'
      'Richmond' => 'Virginia'
      'Olympia' => 'Washington'
      'Charleston' => 'West Virginia'
      'Madison' => 'Wisconsin'
      'Cheyenne' => 'Wyoming'
    }
  end
end

