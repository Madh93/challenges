require_relative 'board'

module WordSearch
  
  DEBUG = false
  MIN = 3
  MAX = 10
  BOARD_SIZE = 10
  
  class WordSearch
    
    def initialize(words)
      @words = words
      @board = Board.new
      add_words
    end
    
    def show
      @board.show
    end
    
    private
    
    def add_words
      @words.each do |word|
        next if !word.size.between?(MIN, MAX)
        # Ugly, ugly... and ugly...
        20.times do
          break if @board.set_word(
            direction: rand(0..1),
            reverse: [true, false].sample,
            word: word 
          )
        end
      end
    end

  end
end