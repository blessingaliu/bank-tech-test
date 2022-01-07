# frozen_string_literal: true

require "./lib/printer"

describe Printer do
  subject(:printer) { described_class.new }
  let(:transaction1) { double(:transaction, date: "05-10-2022", amount: "5000.00", balance: "5000.00") }

  it "should respond to printer" do
    expect(printer).to respond_to(:print_transactions)
  end

  describe "#print_transactions" do
    it "should print the statement in the specified format" do
      expected_heading = "date || credit || debit || balance\n"
      expected_transaction = "05-10-2022 || 5000.00 || 5000.00\n"
      bank_statement = [transaction1]
      expected_statement = expected_heading + expected_transaction
      expect { printer.print_transactions(bank_statement) }.to output(expected_statement).to_stdout
    end
  end
end
