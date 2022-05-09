require './lib/statement.rb'
describe Statement do 
  let(:subject) { Statement.new }
  describe '#statement_headers' do
    it 'should print the headers' do 
      expect(subject.statement_headers).to eq ("date || credit || debit || balance")
    end
  end
  describe 'show_statement' do
    it
  end
end
# need to print the statement
# needs to call the transaction history
# call the array statement
# iterate ovr it and then reverse it