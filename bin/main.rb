#!/usr/bin/env ruby

require 'colorize'
require 'artii'
require_relative '../lib/bot'

title = Artii::Base.new

puts title.asciify('Mega Bot').colorize(:red)

puts 'Welcome please open your telegram account and search for mega_auto_bot'.colorize(:green)
sleep(0.5)
puts '....'.colorize(:green)
puts '.................'.colorize(:green)
sleep(0.5)
puts 'When you want to end your bot press Ctrl + C'.colorize(:green)

Bot.new.mega_bot
