class Bank_Account
  
  attr_reader :balance, :statement, :deposit, :withdraw

  def initialize

    @balance = 0
    @statement = []
    
  end

  def deposit(credit) 
    
     @balance += credit.round(2)
     @statement << Time.new.strftime("%d/%m/%Y") 
     @statement << credit
  end

  def withdraw(debit) 
    
    @balance -= debit.round(2)
    @statement << Time.new.strftime("%d/%m/%Y")
    @statement << debit
  end

  def total
    self.deposit(20)
    self.withdraw(5)
    @balance 
    
  end

  def show_statement
    @statement << @balance.round(2) 
    puts @statement
    
  # 
  end

end
