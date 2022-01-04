require './lib/bank_account'

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
    account.deposit(5000)
    p account.balance
end