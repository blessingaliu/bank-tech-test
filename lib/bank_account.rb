# frozen_string_literal: true

require "./lib/transaction"
require "./lib/printer"

class BankAccount
  attr_reader :balance, :bank_statement

  DEFAULT_BALANCE = 0

  def initialize(transaction_class: Transaction, printer_class: Printer)
    @balance = DEFAULT_BALANCE
    @bank_statement = []
    @transaction_class = transaction_class
    @printer_class = printer_class
  end

  def deposit(date, credit)
    debit = 0
    update_balance(credit, -debit)
    new_transaction(date, credit, debit, @balance)
  end

  def withdraw(date, debit)
    credit = 0
    update_balance(credit, -debit)
    new_transaction(date, credit, debit, @balance)
  end

  def print_statement
    printer = @printer_class.new
    printer.print_transactions(@bank_statement)
  end

  private

  def update_balance(credit, debit)
    @balance += credit
    @balance += debit
  end

  def new_transaction(date, credit, debit, balance)
    transaction = @transaction_class.new(date, credit, debit, balance)
    @bank_statement << transaction
  end
end
