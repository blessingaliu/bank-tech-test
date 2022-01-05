# frozen_string_literal: true

require './lib/print'

describe Print do
  subject(:print) { described_class.new }
  let(:transaction1) { double(:transaction, date: '05-10-2022', amount: '5000.00', balance: '5000.00') }

  it 'should respond to print' do
    expect(print).to respond_to(:print_transactions)
  end

  describe '#print_transactions' do
    it 'should print the statement in the specified format' do
      expected_heading = 'date || credit || debit || balance'
      expected_transaction = '05-10-2022 || 5000.00 || 5000.00'
      bank_statement = [transaction1]
      expected_statement = expected_heading + expected_transaction
      expect { print.print_transactions(bank_statement) }.to output(expected_statement).to_stdout
    end
  end
end
