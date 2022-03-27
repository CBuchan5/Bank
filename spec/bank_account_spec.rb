require './lib/bank_account.rb'

describe Bank_Account do
  describe 'deposit'
    it 'starts the customer with an account balence of 0' do
      account = Bank_Account.new
      expect(account.balance).to eq 0
    end
  
    it 'allows the customer to top up with a deposit' do 
      account = Bank_Account.new
      expect{subject.deposit 10.10}.to change{subject.balance}.by 10.10
    end
 
  describe 'withdraw' do 
    it 'allows the customer to withdraw from their account' do 
      account = Bank_Account.new
      account.deposit(10)
      expect{subject.withdraw 5}. to change{subject.balance}.by -5
    end 
  end

  describe 'date' do
  it 'shows the date a transaction was completed' do 
    account = Bank_Account.new
    expect(subject.date(14/01/2023)).to eq ('14/01/2023')
  end
end
end


