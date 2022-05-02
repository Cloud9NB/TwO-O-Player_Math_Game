class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new("Kevin")
    @player_2 = Player.new("Kilo")
  end

  def start_game
    puts "New Game Started. Welcome #{@player_1.name} and #{@player_2.name}!!"
    take_turn
  end

  def take_turn
    @player_1.new_question
    check_score
    puts "------------ NEW TURN ------------"
    @player_2.new_question
    check_score
    puts "------------ NEW TURN ------------"
    take_turn
  end
  
  def check_score
    if @player_1.is_dead
      show_winner(@player_2)
    elsif @player_2.is_dead
      show_winner(@player_1)
    end
    show_lives
  end

  def show_lives
    puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
  end

  def show_winner(player)
    abort("#{player.name} wins with the score of #{player.lives}/3\n
    ------------ GAME OVER ------------\n
    Good bye!")
  end
  
end