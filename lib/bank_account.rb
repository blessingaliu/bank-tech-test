class BankAccount 
    attr_reader :balance, :bank_statement

    DEFAULT_BALANCE = 0

    def initialize
        @balance = DEFAULT_BALANCE
        @bank_statement = []
    end 

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
    end 
end 