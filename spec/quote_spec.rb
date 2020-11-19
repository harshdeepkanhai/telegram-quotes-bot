require_relative '../lib/quote'

describe Quote do
  let(:quote) { Quote.new }
  describe 'quote object' do
    it 'returns an array' do
      expect(quote.return_quote).to be_a(Array)
    end
  end
end
