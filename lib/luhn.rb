class Credit_card
  attr_accessor :number

    def initialize(number)
      @number = number.to_s
      @is_valid = false
    end


  
    def validate
      array = []
      #break the credit card into its individual digits and reverse the list
      @digits = number.reverse.chars.map(&:to_i)
        #double every second number
        (1...@digits.length).step(2).each do |i|
          digit = @digits[i]*2
          #if the doubled value is greater than or equal to 10, take the value and subtract 9 from it
          if digit >= 10 
            digit = (digit-9)
            array << digit
          else
            digit 
            array << digit
          end
        end
        (0...@digits.length).step(2).each do |i|
          array << @digits[i]
         end 
        return array
    end 
            
    # Sum the digits
    def sum
      array = validate
        sum = 0
        array.each do |n|
          sum = n + sum
        end       
      return sum

    end
    
    #If the sum is divisible by 10, it's a valid number. Otherwise it's invalid 
    def is_valid?
      if sum % 10 == 0
        @is_valid = true
      end
      return @is_valid
    end
end

newcard = Credit_card.new(4194560385008504)
newcard.sum

if newcard.is_valid?
  puts "Your Credit Card number is valid"
else
  puts "Your Credit Card number is not valid"
end