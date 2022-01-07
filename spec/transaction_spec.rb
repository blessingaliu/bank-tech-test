# frozen_string_literal: true

require "./lib/transaction"

describe Transaction do
  subject(:transaction) { described_class.new("05-10-2022", 0, 5000, 5000) }

  describe "#initialize" do

    it "should have a date" do
      expect(transaction.date).to include("05-10-2022")
    end

    it "should have a credit amount" do
      expect(transaction.credit).to eq(0)
    end

    it "should have a debit amount" do
      expect(transaction.debit).to eq(5000)
    end

    it "should have a balance" do
      expect(transaction.balance).to eq(5000)
    end
  end
end
