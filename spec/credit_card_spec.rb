require 'rspec'
require './lib/credit_card.rb'

RSpec.describe CreditCard do
    it 'has a card number' do
        odell_card = CreditCard.new("6011797668867828" , 1500)
        expect(odell_card.card_number).to eq('6011797668867828')
    end

    it 'has a limit' do
        odell_card = CreditCard.new("6011797668867828" , 1500)
        expect(odell_card.limit).to eq(1500)
    end

    it 'has to be validated' do
        odell_card = CreditCard.new("6011797668867828" , 1500)
        expect(odell_card.is_valid?).to be(true)

        alain_card = CreditCard.new("5541801923795240" , 1500)
        expect(alain_card.is_valid?).to be(false)
    end

    it 'gives the last four digits of the card number' do
        odell_card = CreditCard.new("6011797668867828" , 1500)
        expect(odell_card.last_four).to eq("7828")
    end

end