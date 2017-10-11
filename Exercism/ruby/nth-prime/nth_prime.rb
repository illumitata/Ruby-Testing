class Prime

  def self.nth(number)
    
    if(number==0)
      return puts("Error")
    else
      wynik = 0
      lp = 0
      prime = 2
      t = true

      while lp<number do

        t = true

        for i in 2...prime-1
          if prime % i == 0
            t = false
            break
          end
        end

        if t == true
          wynik = prime
          lp += 1
        end
        prime += 1
      end

      return wynik
    end

  end

end

module BookKeeping
  VERSION = 1
end
