class BankAccount 
    attr_reader :balance, :bank_statement

    DEFAULT_BALANCE = 0

    def initialize
        @balance = DEFAULT_BALANCE
        @bank_statement = []
    end 

    def deposit(date, amount)
        @balance += amount
    end

    def withdraw(date, amount)
        @balance -= amount
    end 
end 