# frozen_string_literal: true

require "./lib/bank_account"

# create_new_account
  account = BankAccount.new
  expect(account).to eq(#<BankAccount:0x00000001211d5d40)

# check_default_balance
  account.balance
  expect(account.balance).to eq(0)

# deposit_money
  account.deposit("05-10-2022", 5000)
  account.deposit("06-10-2022", 500)
  account.balance
  expect(account.balance).to eq(5500)

# withdraw_money
  account.withdraw("10-10-2022", 200)
  account.balance
  expect(account.balance).to eq(5300)


# check_current_balance
  account.balance

# check_deposit_is_added_to_bank_statement
  account.deposit("05-10-2022", 5000)
  account.deposit("06-10-2022", 500)
  account
  account.bank_statement
  expect(account.banl_statement).to eq([#<Transaction:0x00000001212f3290                    
  @balance=5000,                                     
  @credit=5000,                                      
  @date="05-10-2022",                                
  @debit=0>,                                         
 #<Transaction:0x0000000121936ad0                    
  @balance=5500,                                     
  @credit=500,
  @date="06-10-2022",
  @debit=0>,
 #<Transaction:0x000000012118c7a8
  @balance=5300,
  @credit=0,
  @date="10-10-2022",
  @debit=200>,
 #<Transaction:0x0000000121313720
  @balance=10300,
  @credit=5000,
  @date="05-10-2022",
  @debit=0>,
 #<Transaction:0x00000001210a6910
  @balance=10800,
  @credit=500,
  @date="06-10-2022",
  @debit=0>])

# print_bank_statement
  account.deposit("05-10-2022", 5000)
  account.deposit("06-10-2022", 500)
  account.withdraw("10-10-2022", 20)
  account.bank_statement
  account.print_statement

  # expected output for print_bank_statement
  date || credit || debit || balance
  10-10-2022 || 0 || 20 || 16280
  06-10-2022 || 500 || 0 || 16300
  05-10-2022 || 5000 || 0 || 15800
  06-10-2022 || 500 || 0 || 10800
  05-10-2022 || 5000 || 0 || 10300
  10-10-2022 || 0 || 200 || 5300
  06-10-2022 || 500 || 0 || 5500
  05-10-2022 || 5000 || 0 || 5000
