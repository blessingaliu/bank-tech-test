class Print 

    def print_transactions(bank_statement)
        print_heading 
        bank_statement.each { |transaction| puts transaction.date + ' || ' + transaction.amount.to_s + ' || ' + transaction.balance.to_s }
    end 

    private

    def print_heading
        puts 'date || credit || debit || balance'
    end
end 