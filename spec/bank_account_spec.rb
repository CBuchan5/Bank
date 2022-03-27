require './lib/bank_account.rb'

describe BankAccount do
  describe 'deposit'
    it 'starts the customer with an account balence of 0' do
      account = BankAccount.new
      expect(account.start_balance).to eq 0
    end
  
    it 'allows the customer to top up with a deposit' do 
      account = BankAccount.new
      expect{subject.deposit 10.10}.to change{subject.start_balance}.by 10.10
    end
 
  describe 'withdraw' do 
    it 'allows the customer to withdraw from their account' do 
      account = BankAccount.new
      account.deposit(10)
      expect{subject.withdraw 5}. to change{subject.start_balance}.by -5
    end 
  end
 
  # As a client,
  # So I know when I did what,
  # I want to be able to see the date I made a transaction.

end


