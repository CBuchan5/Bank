class BankAccount
  
  attr_reader :balance

  def initialize 

    @balance = 0

  end

  def deposit(amount) 
 
   return  @balance += amount.to_f

  end

  def withdraw(amount)
    
    @balance -= amount.to_f
 
  end
end