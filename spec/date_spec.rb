require './lib/date.rb'

describe Date do
 describe 'date' do
  it 'shows the date a transaction was completed' do 
    date = Date.new
    expect(subject.date).to eq ('14/01/2023')
  end
end
end

