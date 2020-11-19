require 'net/http'
require 'json'

class Quote
  def initialize
    @uri = URI('https://zenquotes.io/api/random')
  end

  def get_quote
    quote = Net::HTTP.get(@uri)
    quote = JSON.parse(quote)
    return [quote[0]['q'], quote[0]['a']]
  end
end