class Board
    attr_accessor :cells

    @cells = []

    def initialize 
        self.cells = Array.new(9, " ")
    end

    def reset!
        self.cells = Array.new(9, " ")
    end

    def display
         puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
           puts "-----------"
           puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
           puts "-----------"
           puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end

    def position(num)
        cells[num.to_i-1]
    end

    def full?
        cells.all? do |cell|
            cell != " "
          end
    end

    def turn_count
        count = 0
        cells.each do |cell|
            if cell != " "
            count += 1
        end
    end
    count
    end
    
    def taken?(indx)
        position(indx) != " "
    end

    def valid_move?(num)
        (1..9).include?(num.to_i)&& !taken?(num)

    end

    def update(position, player)
        cells[position.to_i-1] = player.token  
    end

    end