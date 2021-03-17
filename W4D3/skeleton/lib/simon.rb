require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    # debugger
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    require_sequence
    show_sequence

    if !game_over 
      round_success_message
      @sequence_length+=1
    end
  
  end

  def show_sequence
    add_random_color
    p seq
    puts
  end

  def require_sequence
    puts "Enter each color in the sequence"
    # debugger
    @seq.each do |color|
      input = gets.chomp
      if color[0] != input
        game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "You win this round"
  end

  def game_over_message
    puts "Noob, You lost on round: #{@sequence_length}"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

new_player = Simon.new
new_player.play