module Luhn 
  def self.is_valid?(number)
    #SOLUTION
    #break into individal digits
    nums = number.to_s.split("").map(&:to_i)
    total = 0
    #target every other number, starting from right, and double
    nums.reverse.each_with_index do |item, idx|
      val = item.to_i
      if idx % 2 != 0
        val *= 2
        #If the doubled value is >= to 10, take the value and subtract 9 from it.
        if val >= 10
          val -= 9
        end
      end
      #sum the digits
      total += val
    end
    puts total, 'TOTAL'
    #if sum is divisable by 10, its valid
    if total % 10 == 0
      return true
    else 
      return false
    end
  end
end