class Transaction
    attr_reader :date, :amount, :balance

    def initialize(date, amount, balance)
      @date = date
      @amount = amount
      @balance = balance
    end
end 