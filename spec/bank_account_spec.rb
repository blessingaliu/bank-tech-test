require './lib/bank_account'

describe BankAccount do

  describe '#initialize_account' do
    it 'should have a default balance of 0' do
      account = BankAccount.new
      expect(account.balance).to eq BankAccount::DEFAULT_BALANCE
    end

    it 'should have a bank statement' do
        expect(account.bank_statement).to eq([])
    end 
  end

  describe '#deposit' do
    it 'should increase the bank balance by the deposited amount' do
        account = BankAccount.new
        account.deposit(5000)
        expect(account.balance).to eq 5000
    end
  end

  describe '#withdraw' do
    it 'should decrease the bank balance by the withdrawn amount' do
        account = BankAccount.new
        account.deposit(5000)
        account.withdraw(500)
        account.deposit(20)
        expect(account.balance).to eq 4520
    end
  end

end