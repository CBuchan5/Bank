require_relative 'bank_account'
class Statement

  def statement_headers
    return "date || credit || debit || balance"
  end

  def show_statement

    puts statement_header = "date || credit || debit || balance"
    
    @statement.reverse_each do |transaction|
      p "#{transaction.deposit} || #{transaction.withdraw} || #{transaction.balance} "
      
    end
  end
end