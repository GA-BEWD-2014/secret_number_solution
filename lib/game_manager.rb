class Game

  attr_accessor :player, :sec_number

  def initialize(player, sec_number)
    @player = player
    @sec_number = sec_number
    @tries = 3
  end

  def game_rules
    puts "Rules of the game, guess a number from 1 to 10. You have extactly three tries..."
    guess_left
    get_guess
  end

  def guess_left
    puts "Only #{@tries} left..."
  end

  def get_guess
    puts "What is your guess?"
    guess = gets.chomp.to_i
    @tries -= 1
    check_guess(guess)
  end

  def check_guess(guess)
    if guess == @sec_number.sec_num
      puts "Congratulations, #{@player.name}. You win!"
    elsif guess != @sec_number.sec_num and @tries > 0
      if guess > @sec_number.sec_num
        puts "Nope... Too high!!!"
        guess_left
        get_guess
      else
        puts "Nope... Too low!"
        guess_left
        get_guess
      end

    else
      puts "The secret number was #{@sec_number.sec_num}. Better luck next time, #{@player.name}!"
    end
  end

end