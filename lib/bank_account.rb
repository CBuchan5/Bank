class BankAccount
  
  attr_reader :start_balance

  def initialize 

    @start_balance = 0

  end

  def deposit(amount) 
 
   return  @start_balance = @start_balance + amount

  end

  def withdraw(amount)
    
    @start_balance -= amount
   # add deposit first
   # then withdraw
  end
end