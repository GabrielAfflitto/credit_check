
class Validate
    attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def validate_card
    string_convert
    doubling_operation
    subtract_num
    check_card
  end

  def string_convert
      @card_number = card_number.reverse.chars
  end

  def doubling_operation
    @card_number = card_number.map.with_index do |num, index|
      if index.odd?
        num.to_i * 2
      else
        num.to_i
      end
    end
  end

  def subtract_num
    @card_number = card_number.map do |num|
      if num > 9
        num - 9
      else
        num
      end
    end
  end

  def check_card
    @card_number = card_number.inject(0) do |sum, x|
      sum + x
    end
      if @card_number % 10 == 0
        puts "The number is valid!"
      else
        puts "The number is invalid!"
      end
  end
end
