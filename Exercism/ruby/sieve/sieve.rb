class Sieve

  def initialize(num)
    @num = num
  end

  def primes

    arr = Array.new

    if(@num<=1)
      return arr
    else

      result = Array.new

      #limit for ellimiation process
      @limit = Math.sqrt(@num)
      @limit = @limit.ceil

      #making array filled with numbers from 2 to given number
      (0..@num).each do |i|
        arr[i] = i
      end

      arr.delete(0)
      arr.delete(1)

      #looking for multiplying values
      (2..@limit).each do |m|
        arr.delete_if { |a| if arr[a] != m && arr[a] != nil
                                arr[a].modulo(m) == 0
                            end
                      }
      end

      return arr
    end
  end

end

module BookKeeping
  VERSION = 1
end
