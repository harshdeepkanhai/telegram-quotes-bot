require 'telegram/bot'
require 'dotenv/load'
require_relative './messages'
require_relative './quote'
require_relative './fun'

class Bot
  def initialize
    @token = ENV['TELEGRAM_API_TOKEN']
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
          quote, author = @quote.return_quote
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
