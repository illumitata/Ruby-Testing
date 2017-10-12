class Sieve

  def initialize(num)
    @num = num
  end

  def primes

    arr = Array.new

    if(@num<2)
      return arr
    else

      #limit for ellimiation process
      @limit = Math.sqrt(@num)
      @limit = @limit.ceil

      #making array filled with numbers from 2 to given number
      (0..@num).each do |i|
        arr[i] = i
      end

      #looking for multiplying values
      (2..@limit).each do |m|
        arr.each do |i|
          if arr[i]!=m && arr[i]%m==0
            arr[i] = 0
          end
        end
      end

      #getting rid of 0's and 1
      arr.delete(0)
      arr.delete(1)

      return arr
    end
  end

end

module BookKeeping
  VERSION = 1
end
