require_relative '../lib/fun'

describe Fun do
  let(:fun) { Fun.new }
  describe 'fun object' do
    it 'returns a string joke' do
      expect(fun.jokes('Mock')).to be_a(String)
    end
    it 'does not return an Array' do
      expect(fun.jokes('Mock')).to_not be_a(Array)
    end
  end
end
