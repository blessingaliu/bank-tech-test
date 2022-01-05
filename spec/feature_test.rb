# frozen_string_literal: true

require "./lib/print"
require "./lib/transaction"
require "./lib/bank_account"

# create_new_account
  BankAccount.new

# check_default_balance
  account.balance


# deposit_money
  account.deposit("05-10-2022", 5000)
  account.deposit("06-10-2022", 500)
  account.balance

# withdraw_money
  account.withdraw("10-10-2022", 20)
  account.balance

# new_transaction
  Transaction.new(
    "05-10-2022", 5000, 5000
  )

# check_current_balance
  account.balance


# check_deposit_is_added_to_bank_statement
  account.deposit("05-10-2022", 5000)
  account.deposit("06-10-2022", 500)
  account
  account.bank_statement

# print_bank_statement
  account.deposit("05-10-2022", 5000)
  account.deposit("06-10-2022", 500)
  account.withdraw("10-10-2022", 20)
  account.bank_statement
  account.balance
