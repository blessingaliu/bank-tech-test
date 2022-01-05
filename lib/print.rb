class Print 

    def print_transactions(bank_statement)
        print_heading 
        bank_statement.each { |transaction| print transaction.date + ' || ' + transaction.amount.to_s + ' || ' + transaction.balance.to_s }
    end 

    private

    def print_heading
        print 'date || credit || debit || balance'
    end
end 