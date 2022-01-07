# Bank tech test 
**Makers week 10 practice**

## Specification
### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## How I approached this test 
- First I attempted to do a class domain model diagram for the different classes required 
![Initial class diagram](https://user-images.githubusercontent.com/77657186/148060562-2d5134c5-e469-4657-bb7f-54dc13c5c6f6.jpeg)

<br>

- Then I wrote user stories according to the requirements (i might add more to them later if necessary)
``` 
As a client 
So that I can govern my wealth
I want to open a bank account

As a client 
So that I can add money to my bank account 
I want to be able to make a deposit to my account 

As a client
So that I can take money out of my bank account
I want to be able to make a withdrawal out of my account 

As a client 
So that I can see my transactions
I want to be able to print my bank statement which has my bank balance
```
- Then I worked through all the user stories, testing first to implement the requirements.


## How the app should run 
```irb
3.0.2 :001 > require "./lib/bank_account"
 => true 
3.0.2 :002 > account = BankAccount.new
 => 
#<BankAccount:0x0000000142106cb8
... 
3.0.2 :003 > account.deposit("05-10-2022", 5000)
[#<Transaction:0x00000001450d14e8
  @balance=5000,
  @credit=5000,
  @date="05-10-2022",
  @debit=0>] 
3.0.2 :004 > account.deposit("06-10-2022", 500)
 => 
[#<Transaction:0x00000001450d14e8
  @balance=5000,
  @credit=5000,
  @date="05-10-2022",
  @debit=0>,
 #<Transaction:0x00000001450c2c90
  @balance=5500,
  @credit=500,
  @date="06-10-2022",
3.0.2 :005 > account.withdraw("10-10-2022", 200)
[#<Transaction:0x00000001450d14e8
  @balance=5000,
  @credit=5000,
  @date="05-10-2022",
  @debit=0>,
 #<Transaction:0x00000001450c2c90
  @balance=5500,
  @credit=500,
  @date="06-10-2022",
  @debit=0>,
 #<Transaction:0x00000001450bac98
  @balance=5300,
  @credit=0,
  @date="10-10-2022",
  @debit=200>] 
3.0.2 :006 > account.balance
 => 5300 
3.0.2 :007 > account.print_statement
date || credit || debit || balance
10-10-2022 || 0 || 200 || 5300
06-10-2022 || 500 || 0 || 5500
05-10-2022 || 5000 || 0 || 5000
 => 
[#<Transaction:0x00000001450bac98
  @balance=5300,
  @credit=0,
  @date="10-10-2022",
  @debit=200>,
 #<Transaction:0x00000001450c2c90
  @balance=5500,
  @credit=500,
  @date="06-10-2022",
  @debit=0>,
 #<Transaction:0x00000001450d14e8
  @balance=5000,
  @credit=5000,
  @date="05-10-2022",
  @debit=0>] 
```


## Tech used 
- Ruby
- Rspec
- Simplecov
- Rubocop


## How to run 
- Clone this repository 
- Run bundle 
- Run rspec 
