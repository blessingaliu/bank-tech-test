require './lib/bank_account'

describe BankAccount do

  describe '#initialize' do
    it 'should have a default balance of 0' do
      account = BankAccount.new
      expect(account.balance).to eq BankAccount::DEFAULT_BALANCE
    end
  end

  describe '#deposit' do
  it 'should increase the bank balance by the deposited amount' do
    account = BankAccount.new
    account.deposit(5000)
    expect(account.balance).to eq 5000
  end
end

end