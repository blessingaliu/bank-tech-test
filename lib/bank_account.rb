# frozen_string_literal: true

require "./lib/transaction"
require "./lib/print"

class BankAccount
  attr_reader :balance, :bank_statement

  DEFAULT_BALANCE = 0

  def initialize(transaction_class: Transaction)
    @balance = DEFAULT_BALANCE
    @bank_statement = []
    @transaction_class = transaction_class
    @print = Print.new
  end

  def deposit(date, amount)
    @balance += amount
    new_transaction(date, amount, @balance)
  end

  def withdraw(date, amount)
    @balance -= amount
    new_transaction(date, amount, @balance)
  end

  def print_statement
    @print.print_transactions(@bank_statement)
  end

  private

  def new_transaction(date, amount, balance)
    transaction = @transaction_class.new(date, amount, balance)
    @bank_statement << transaction
  end
end
