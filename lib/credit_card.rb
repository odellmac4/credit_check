
class CreditCard

    attr_reader :card_number,
                :limit

    def initialize(card_number , limit)
        @card_number = card_number
        @limit = limit
    end

    def is_valid?
        card_number_array = card_number.chars
        digits = card_number_array.map  {|char| char.to_i }
        double_digits = digits.map.with_index do |digit, index|
            if index.even?
                digit * 2
            else
                digit 
        end
    end
    summed_digits = double_digits.map do |digit|
        if digit > 9
            digit.digits.sum
        else
            digit
        end
    end
        if summed_digits.sum % 10 == 0
            true
        else
            false
        end
    end
    def last_four
        card_number[-4..-1]
    end
end

odell_card = CreditCard.new("6011797668867828" , 1500)
alain_card = CreditCard.new("4024007106512380", 15000)
p alain_card.is_valid?