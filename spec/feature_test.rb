require './lib/bank_account'
require './lib/transaction'

def create_new_account
    account = BankAccount.new
    p account
end

def check_balance
    account = BankAccount.new
    p account.balance
end

def deposit_money
    account = BankAccount.new
    account.deposit('05-10-2022', 5000)
    p account.balance
end

def withdraw_money
    account = BankAccount.new
    account.deposit('05-10-2022', 5000)
    account.deposit('06-10-2022', 500)
    account.withdraw('10-10-2022', 20)
    p account.balance
end

def check_balance
    account = BankAccount.new
    p account.balance
end

def new_transaction
    transaction = Transaction.new(
        '05-10-2022', 5000, 5000)
    p transaction
end 

def check_bank_statement 
    account = BankAccount.new
    account.deposit('05-10-2022', 5000)
    account.deposit('06-10-2022', 500)
    account.withdraw('10-10-2022', 20)
    p account.bank_statement
end 

