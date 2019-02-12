class NotPossibleMove < StandardError; end

class Board
    attr_reader :rows
    
    def initialize
        @rows = Array.new(8) {Array.new(8, nil) }
        # @sentinel = NullPiece
    end


    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, value)
        x, y = pos
        @rows[x][y] = value
    end

    def move_piece(start_pos, end_pos)
        raise NotPossibleMove if self[start_pos] == nil || self[end_pos] != nil
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end

end