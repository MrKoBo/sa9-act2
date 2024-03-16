# spec/prob4_spec.rb
require 'prob4'

RSpec.describe BankAccount do
  let(:bankaccount) { BankAccount.new(50) }
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bankaccount.deposit(25)
      expect(bankaccount.balance).to eq(75)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      bankaccount.withdraw(25)
      expect(bankaccount.balance).to eq(25)
    end

    it "does not change the balance if insufficient funds" do
      bankaccount.withdraw(51)
      expect(bankaccount.balance).to eq(50)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      current_balance = bankaccount.balance
      expect(bankaccount.balance).to eq(current_balance)
    end
  end
end
