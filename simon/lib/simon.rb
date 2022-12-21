class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize()
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end

  def play
    until @game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    if !game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
    end
  end

  def require_sequence
    puts "Enter the firs tletter of each color on a new line."

    seq.each do |color|
      user_choice = gets.chomp
      if color[0] != user_choice
        @game_over = true
        break
      end
    end

  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
    "Successful Round!"
  end

  def game_over_message
    "Game Over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end
