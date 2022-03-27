class BankAccount
  
  attr_reader :start_balance

  def initialize 

    @start_balance = 0

  end

  def deposit(amount) 
 
   return  @start_balance = @start_balance + amount

   p @start_balance
  end


end