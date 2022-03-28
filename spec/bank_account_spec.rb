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
      expect(subject.date(28/03/2022)).to eq (['28/03/2022'])
    end
  end

  # describe 'show_statement' do 
    # it 'start with an empty list' do 
    #   expect(subject.show_statement([])).to eq []
    # end
    # it 'shows a statment of all transactions' do 
    #   expect(subject.show_statement(['28/03/2022', 200, '28/03/2022', 100, 100])).to eq ['28/03/2022', 200, '28/03/2022', 100, 100]
    # end
  # end
end


# As a client,
# So I can keep trck of what I've done and when,
# I want to see my bank statment printed.