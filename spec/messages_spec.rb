require_relative '../lib/messages'

describe Messages do
  let(:message) { Messages.new('Mock') }
  describe 'messages object' do
    it 'has greeting instance variable' do
      expect(message.greeting).to be_a(String)
    end
    it 'has invalid_command instance variable' do
      expect(message.invalid_command).to be_a(String)
    end
    it 'greeting variable contains username ' do
      expect(message.greeting).to include('Mock')
    end
    it 'invalid_command variable matches the defined string' do
      expect(message.invalid_command).to eq("Sorry I don\'t understand you please type or click /start")
    end
  end
end
