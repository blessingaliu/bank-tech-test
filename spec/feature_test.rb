require './lib/print'
require './lib/transaction'
require './lib/bank_account'

def create_new_account
    account = BankAccount.new
    account
end

def check_default_balance
    account.balance
end

def deposit_money
    account.deposit('05-10-2022', 5000)
    account.deposit('06-10-2022', 500)
    account.balance
end

def withdraw_money
    account.withdraw('10-10-2022', 20)
    account.balance
end

def new_transaction
    transaction = Transaction.new(
        '05-10-2022', 5000, 5000)
    transaction
end 

def check_current_balance
    account.balance
end

def check_deposit_is_added_to_bank_statement
    account.deposit('05-10-2022', 5000)
    account.deposit('06-10-2022', 500)
    account
    account.bank_statement
end 

def print_bank_statement 
    account.deposit('05-10-2022', 5000)
    account.deposit('06-10-2022', 500)
    account.withdraw('10-10-2022', 20)
    account.bank_statement
    account.balance
    
end 

