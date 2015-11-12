require_relative ('controller')
require 'pry'
class Game
attr_reader :capitals, :available
attr_accessor :question

  def initialize
    @capitals = {
      'Montgomery' => 'Alabama',
      'Juneau' => 'Alaska',
      'Phoenix' => 'Arizona',
      'Little Rock' => 'Arkansas',
      'Sacramento' => 'California',
      'Denver' => 'Colorado',
      'Hartford' => 'Connecticut',
      'Dover' => 'Delaware',
      'Tallahassee' => 'Florida',
      'Atlanta' => 'Georgia',
      'Honolulu' => 'Hawaii',
      'Boise' => 'Idaho',
      'Springfield' => 'Illinois',
      'Indianapolis' => 'Indiana',
      'Des Moines' => 'Iowa',
      'Topeka' => 'Kansas',
      'Frankfort' => 'Kentucky',
      'Baton Rouge' => 'Louisiana',
      'Augusta' => 'Maine',
      'Annapolis' => 'Maryland',
      'Boston' => 'Massachusetts',
      'Lansing' => 'Michigan',
      'Saint Paul' => 'Minnesota',
      'Jackson' => 'Mississippi',
      'Jefferson City' => 'Missouri',
      'Helena' => 'Montana',
      'Lincoln' => 'Nebraska',
      'Carson City' => 'Nevada',
      'Concord' => 'New Hampshire',
      'Trenton' => 'New Jersey',
      'Santa Fe' => 'New Mexico',
      'Albany' => 'New York',
      'Raleigh' => 'North Carolina',
      'Bismarck' => 'North Dakota',
      'Columbus' => 'Ohio',
      'Oklahoma City' => 'Oklahoma',
      'Salem' => 'Oregon',
      'Harrisburg' => 'Pennsylvania',
      'Providence' => 'Rhode Island',
      'Columbia' => 'South Carolina',
      'Pierre' => 'South Dakota',
      'Nashville' => 'Tennessee',
      'Austin' => 'Texas',
      'Salt Lake City' => 'Utah',
      'Montpelier' => 'Vermont',
      'Richmond' => 'Virginia',
      'Olympia' => 'Washington',
      'Charleston' => 'West Virginia',
      'Madison' => 'Wisconsin',
      'Cheyenne' => 'Wyoming'
    }
    @question = nil
    @available = []
    @answered = []
  end

  def create_questions
    capitals.each do |capital, state|
      available << Capital.new(:capital => capital, :state => state)
    end
  end

  def get_question
    self.question = available.shift
  end

  def finished?
    available.empty?
  end

  def user_guess(guess)
    guess == question.capital ? true : false
  end

  def correct_guess
    @answered << self.question
  end
end

class Capital
attr_reader :state, :capital

  def initialize(args = {})
    @capital = args[:capital]
    @state = args[:state]
  end
end








