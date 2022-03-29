# frozen_string_literal: true

require './lib/bank_account'

describe Bank_Account do
  let(:subject) { Bank_Account.new }

  describe '#deposit'
  it 'starts the customer with an account balence of 0' do
    expect(subject.balance).to eq 0
  end

  it 'allows the customer to top up with a deposit' do
    expect { subject.deposit 10.10 }.to change { subject.balance }.by 10.10
  end

  describe '#withdraw' do
    it 'allows the customer to withdraw from their account' do
      subject.deposit(10)
      expect { subject.withdraw 5 }.to change { subject.balance }.by(-5)
    end
  end

  describe '#total' do
    it 'should show to toal after any transaction' do
      subject.deposit(10)
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.total).to eq 15
    end
    it 'should show to toal after any transaction' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.total).to eq 5
    end
  end
end
