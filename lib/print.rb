# frozen_string_literal: true

class Print
  def print_transactions(bank_statement)
    print_heading
    bank_statement.each do |transaction|
      print "#{transaction.date} || #{transaction.amount} || #{transaction.balance}"
    end
  end

  private

  def print_heading
    print 'date || credit || debit || balance'
  end
end
