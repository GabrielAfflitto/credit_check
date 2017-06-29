

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"


# reverse string and split the string to
# make it easier to work with
# go through second array and multiply every number by 2 if.odd
# if digit is greater than 9 will subtract 9
# add numbers and divide by 10, if no remainder % == 0 then valid. else invalid

class Validate
    attr_reader :card_number
  def initialize(card_number)
    @card_number = card_number
  end

  def validate_card
    string_read
    multiply_odd
    subtract_num
    check_card
  end

  def string_read
    @card_number = card_number.reverse.chars
  end

  def multiply_odd
    @card_number = card_number.map.with_index do |value, index|
      if index.odd?
        value = value.to_i * 2
      else
        value.to_i
      end
    end
  end

  def subtract_num
    @card_number = card_number.map do |value|
      if value > 9
        value -= 9
      else
        value
      end
    end
  end

  def check_card
    @card_number = card_number.inject(0){|sum,x| sum + x }
    if @card_number % 10 == 0
      puts "The number is valid!"
    else
      puts "The number is invalid!"
    end
  end

end
