require './lib/bank_account'

describe BankAccount do

  describe '#initialize' do
    it 'should have a default balance of 0' do
      account = BankAccount.new
      expect(account.balance).to eq 0
    end
  end

end