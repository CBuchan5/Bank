require './lib/bank_account.rb'

describe BankAccount do
  describe 'deposit'
  it 'starts the customer with an account balence of 0' do
    account = BankAccount.new
    expect(account.deposit).to eq 0
  end


end