require 'telegram/bot'
require_relative './messages'
require_relative './quote'
require_relative './fun'

class Bot
  attr_reader :token, :quote, :messages
  def initialize
    @token = '1423220551:AAFKR--n2ETu6LW_pEEtRJzNeBae_4JMswo'
    @quote = Quote.new
    @fun = Fun.new
  end

  def mega_bot
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        @messages = Messages.new(message.from.first_name)
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: @messages.greeting)
        when '/quote'
          quote, author = @quote.get_quote
          bot.api.send_message(chat_id: message.chat.id, text: "\"#{quote}\" \n by #{author}")
        when '/fun'
          bot.api.send_message(chat_id: message.chat.id, text: @fun.jokes(message.from.first_name))
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
        else
          bot.api.send_message(chat_id: message.chat.id, text: @messages.invalid_command)
        end
      end
    end
  end
end