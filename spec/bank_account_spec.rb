require './lib/bank_account'

describe BankAccount do
    subject(:account) { described_class.new(transaction_class: mock_transaction_class) }
    let(:mock_transaction_class) { double(:mock_transaction_class, new: transaction) }
    let(:transaction) { double(:transaction) }

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
        account.deposit('05-10-2022', 5000)
        expect(account.balance).to eq 5000
    end
  end

  describe '#withdraw' do
    it 'should decrease the bank balance by the withdrawn amount' do
        account.deposit('05-10-2022', 5000)
        account.withdraw('05-10-2022', 500)
        account.deposit('10-10-2022', 20)
        expect(account.balance).to eq 4520
    end
  end

#   describe 'adding transaction' do
#     it 'should add a transaction to the bank statement' do
#         account.deposit('05-10-2022', 5000)
#         expect(account.bank_statement).to include({date: '05-10-2022', amount: 5000, balance: 5000})
#     end
#   end 

  describe '#print_statement' do
    it 'should respond to print_statement' do
        expect(account).to respond_to(:print_statement)
    end

    it 'should print statement to view transactions' do
        mock_statement = account.bank_statement
        expect(account.print_statement).to eq(mock_statement)
    end
 end
end