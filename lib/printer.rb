# frozen_string_literal: true

class Printer
  def print_transactions(bank_statement)
    print_heading
    bank_statement.reverse.each do |transaction|
      puts "#{transaction.date} || #{transaction.amount} || #{transaction.balance}"
    end
  end

  private

  def print_heading
    puts "date || credit || debit || balance"
  end
end
