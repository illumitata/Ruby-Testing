class Squares

  def initialize(number)
    @number =  number
  end

  def square_of_sum

    sum = 0

    for i in 1..@number
      sum += i
    end

    sum *= sum

    return sum

  end

  def sum_of_squares

    sum = 0

    for i in 1..@number
      sum += i * i
    end

    return sum

  end

  def difference

    Squares.new(@number).square_of_sum - Squares.new(@number).sum_of_squares

  end

end

module BookKeeping
   VERSION = 4
end
