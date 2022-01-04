require './lib/bank_account'

describe BankAccount do
    subject(:account) {described_class.new}
    let(:statement) { double :statement }

  describe '#initialize_account' do
    it 'should have a default balance of 0' do
        expect(account.balance).to eq BankAccount::DEFAULT_BALANCE
    end

    it 'should have a bank statement' do
        expect(account.bank_statement).to eq([])
    end 
  end

  describe '#deposit' do
    it 'should increase the bank balance by the deposited amount' do
        account.deposit(05-10-2022, 5000)
        expect(account.balance).to eq 5000
    end
  end

  describe '#withdraw' do
    it 'should decrease the bank balance by the withdrawn amount' do
        account.deposit(05-10-2022, 5000)
        account.withdraw(05-10-2022, 500)
        account.deposit(10-10-2022, 20)
        expect(account.balance).to eq 4520
    end
  end

  describe 'adding transaction' do
    it 'should add a transaction to the bank statement' do
        expect(account.bank_statement).to include({date: '10-01-2012', amount: 1000, balance: 1000})
    end
  end 

  describe '#print_statement' do
    it 'should print statement to view transactions' do
        expect(statement).to receive(:print)
        bank_account.print_statement
    end
  end
end