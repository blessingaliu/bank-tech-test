# frozen_string_literal: true

class Transaction
  attr_reader :date, :debit, :balance

  def initialize(date, debit, balance)
    @date = date
    @debit = debit
    @balance = balance
  end
end
