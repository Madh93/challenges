module WordSearch
  
  DIRECTION = { 
    horizontal: 0, 
    vertical: 1
  }
  
  class Board
    
    include Enumerable
    attr_reader :size, :occupied, :board
    
    def initialize
      @size = BOARD_SIZE
      @occupied = []
      @board = Array.new(@size**2) do
        ('A'..'Z').to_a.sample
      end
    end

    def each(&block)
      @board.each(&block)
    end
    
    def show
      @board.each_slice(@size) do |row|
        puts row.each { |l| l }.join(" ")
      end
    end
    
    def set_word(direction: -1, reverse: false, word: "")
      index = rand(0...@size)*@size + rand(0...@size)

      if direction == DIRECTION[:horizontal]
        to_fill = (index...(index+word.size)).to_a
      else
        to_fill = (index...(index+word.size*@size)).step(@size).to_a
      end

      to_fill.reverse! if reverse

      # Check is a valid horizontal/vertical range
      return false if !valid_range(to_fill, direction, word.size)

      # Check is not a occupied box
      return false if !available_boxes(to_fill)
      @occupied += to_fill

      # Filling
      to_fill.each_with_index do |pos, i|
        @board[pos] = word[i]
      end

      if DEBUG
        puts "#{direction} | #{reverse} | #{word}"
        p to_fill
        puts "----------"
      end

      return true
    end

    private

    def available_boxes(elements)
      elements - @occupied == elements
    end
    
    def valid_range(elems, direction, length)
      if direction == DIRECTION[:horizontal]
        (elems.first/@size) == (elems.last/@size)
      else
        (elems.min >= 0) && (elems.max < @size**2)
      end
    end

  end
end