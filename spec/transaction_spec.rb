# frozen_string_literal: true

require "./lib/transaction"

describe Transaction do
  describe "#initialize" do

    it "should have a date" do
      transaction = Transaction.new("05-10-2022", 5000, 5000)
      expect(transaction.date).to include("05-10-2022")
    end

    it "should have a debit amount" do
      transaction = Transaction.new("05-10-2022", 5000, 5000)
      expect(transaction.debit).to eq(5000)
    end

    it "should have a balance" do
      transaction = Transaction.new("05-10-2022", 5000, 5000)
      expect(transaction.balance).to eq(5000)
    end
  end
end
