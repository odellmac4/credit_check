require './lib/credit_card.rb'

card_number = "4024007106512380"

def luhn_algo(card_number)
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
# p `summed_digits.sum` Check the sum of new array to see if divisible by 10
    if summed_digits.sum % 10 == 0
        "The number #{card_number} is valid!"
    else
        "The number #{card_number} is invalid!"
    end
end

luhn_algo(card_number)


# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
