require 'rspec'
require './lib/bank'
require './lib/credit_card'

RSpec.describe Bank do
  it "exists" do
    bank = Bank.new("Wells Fargo")
    expect(bank).to be_a Bank
  end

  it "has a name" do 
    bank = Bank.new("Wells Fargo")
    expect(bank.name).to eq "Wells Fargo"
  end

  it "knows a transaction is invalid when credit card is invalid" do
    bank = Bank.new("Wells Fargo")
    credit_card = CreditCard.new("4024007106512380", 15000)
    bank.valid_transaction?(100, credit_card)
    expect(bank.valid_transaction?(100, credit_card)).to be false
  end

  it "knows a transactions is invalid when the amount is over the limit" do
    bank = Bank.new("Wells Fargo")
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(bank.valid_transaction?(20000, credit_card)).to be false
  end

  it "knows when a transaction is valid" do
    bank = Bank.new("Wells Fargo")
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(bank.valid_transaction?(11000, credit_card)).to be true
  end
end