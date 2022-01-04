class BankAccount 
    attr_reader :balance, :bank_statement

    DEFAULT_BALANCE = 0

    def initialize(transaction_class: Transaction)
        @balance = DEFAULT_BALANCE
        @bank_statement = []
        @transaction_class = transaction_class
    end 

    def deposit(date, amount)
        @balance += amount
        new_transaction(date, amount, @balance)
    end

    def withdraw(date, amount)
        @balance -= amount
        new_transaction(date, amount, @balance)
    end 

    private

    def new_transaction(date, amount, balance)
        transaction = @transaction_class.new(date, amount, balance)
        @bank_statement << transaction
    end
end 