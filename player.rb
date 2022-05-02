class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print "> "
    @input = $stdin.gets.chomp
    if new_question.check_answer?(@input.to_i)
      puts "Yes! You are correct."
    else
      puts "#{name}: 'Seriously? No!'"
      take_life
    end
  end

  def take_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

end