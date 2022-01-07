# frozen_string_literal: true

require "./lib/bank_account"

describe BankAccount do
  subject(:account) { described_class.new(transaction_class: mock_transaction_class, printer_class: mock_printer_class) }

  let(:mock_transaction_class) { double(:mock_transaction_class, new: transaction) }
  let(:transaction) { double(:transaction, date: "05-10-2022", credit: "", debit: "5000.00", balance: "5000.00") }
  let(:mock_printer_class) { double(:mock_printer_class, new: printer) }
  let(:printer) { double(:printer, print_transactions: transaction) }

  describe "#initialize_account" do
    it "should have a default balance of 0" do
      expect(account.balance).to eq BankAccount::DEFAULT_BALANCE
    end

    it "should have a bank statement" do
      expect(account.bank_statement).to eq([])
    end
  end

  describe "#deposit" do
    before do
      account.deposit("05-10-2022", 5000)
    end

    it "should increase the bank balance by the deposited amount" do
      expect(account.balance).to eq 5000
    end

    it "should create a transaction with a credit amount" do
      expect(mock_transaction_class).to have_received(:new)
      .with("05-10-2022", 5000, 0, 5000)
    end

    it 'should be recorded in the bank statement' do
      expect(account.bank_statement).to include(transaction)
    end
  end

  describe '#withdraw' do
    before do
      account.withdraw('05-10-2022', 500)
    end

    it 'should decrease the bank balance by the withdrawn amount' do
      expect(account.balance).to eq -500
    end

    it 'should create a transaction with a debit amount' do
      expect(mock_transaction_class).to have_received(:new)
      .with('05-10-2022', 0, 500, -500)
    end 

    it 'should get recorded in the bank statement' do
      expect(account.bank_statement).to include(transaction)
    end
  end

  describe '#print_statement' do
    it 'should respond to print_statement' do
      expect(account).to respond_to(:print_statement)
    end

    it 'should send the statement to be printed' do
      account.deposit('05-10-2022', 5000)
      account.print_statement
      expect(mock_printer_class).to have_received(:new)
    end
  end
end
