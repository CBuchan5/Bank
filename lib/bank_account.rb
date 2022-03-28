class Bank_Account
  
  attr_reader :balance, :statement

  def initialize

    @balance = 0
    @statement = []
    
  end

  def deposit(credit) 
    
     @balance += credit.to_f
     @statement << Time.new.strftime("%d/%m/%Y") 
     @statement << credit
  end

  def withdraw(debit) 
    
    @balance -= debit.to_f
    @statement << Time.new.strftime("%d/%m/%Y")
    @statement << debit
  end

  def date(current_date)
    current_date = Time.new.strftime("%d/%m/%Y") 
    @statement << current_date
  end 

  def show_statement
  puts @statement
  end

end
