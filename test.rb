require 'matrix'
require 'pry'

def win?
square = [[1,3,2],
          [4,2,6],
          [2,8,9]]
binding.pry
p=2

  n = square.size
  m = Matrix[*square]
  pvec = Matrix.build(1,n){p}.row(0)
  m.row_vectors.any?    { |r| r == pvec }      ||
  	binding.pry
    m.column_vectors.any? { |c| c == pvec }    ||
    Vector[*m.each(:diagonal).to_a] == pvec    ||
    n.times.all? { |i| square[i][n-i-1] == p }
end

win?