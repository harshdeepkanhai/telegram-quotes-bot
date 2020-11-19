class Fun
  def initialize; end

  def jokes(user)
    arr = ["Why don’t ants ever get sick?
    Because they have little anty bodies.",
           "Did you hear about the cheese factory that exploded in France?
    There was nothing left but de Brie.",
           "What’s a pirate’s favorite letter?
    You think it’s R, but it be the C.",
           "Which bird has the worst manners?
    Mocking birds.",
           "What do you get from a pampered cow?
      Spoiled milk.",
           "What did the big flower say to the little flower?
    Hi, bud!"]
    "Hi #{user} \n" + arr.sample
  end
end
