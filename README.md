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



## Tech used 
- Ruby
- Rspec
- Simplecov
- Rubocop


## How to run 
- Clone this repository 
- Run bundle 
- Run rspec 
