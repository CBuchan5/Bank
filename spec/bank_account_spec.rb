require './lib/bank_account.rb'

describe BankAccount do
  describe 'deposit'
  it 'starts the customer with an account balence of 0' do
    account = BankAccount.new
    expect(account.start_balance).to eq 0
  end
  
  # it 'allows the customer to top up with a deposit' do 
  #   account = BankAccount.new
  #   expect(account.deposit).to eq 5
  # end

end

# Create the deposit - done
# Make the deposit defult to 0
# then focus on top up
# allow the deposit amout to top_up
#
#