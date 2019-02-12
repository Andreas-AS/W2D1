require "byebug"

class Game
    attr_reader :board

    def initialize
        debugger
        @board = Board.new
        @display = Display.new(board)
        @players
        @current_player
        i = 0
        while i < 8
            board[[0, i]] = Piece.new("pawn")
            board[[1, i]] = Piece.new("queen")
            board[[6, i]] = Piece.new("king")
            board[[7, i]] = Piece.new("rook")
            i += 1
        end
    end


end