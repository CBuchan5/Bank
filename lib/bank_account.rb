class Bank_Account
  
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

  def date(current_date)
    current_date = Time.new
    current_date.strftime("%d/%m/%Y")  
  end 
end
