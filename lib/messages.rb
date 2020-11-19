class Messages
  attr_reader :greeting, :invalid_command
  def initialize(username)
    @greeting = "Welcome to Mega Bot #{username}
    type /start  to start
    This bot will make you motivated and put a smile on your face
    Do you need a motivation? type or click /quote
    Do you need a funny joke? type or click /fun
    Click or type /stop to end"
    @invalid_command = "Sorry I don\'t understand yoy please type or click /start"
  end
end