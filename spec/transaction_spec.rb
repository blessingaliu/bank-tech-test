require './lib/transaction'

describe Transaction do

  describe '#initialize' do
    before do
      transaction = Transaction.new('05-10-2022', 5000, 5000)
    end

    it 'should have a date' do
      transaction = Transaction.new('05-10-2022', 5000, 5000)
      expect(transaction.date).to be('05-10-2022')
    end
  end

end