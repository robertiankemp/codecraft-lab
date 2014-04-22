require 'colorize'

class Menu

  puts "welcome"

  def uptime
    puts "how many processes running #{`uptime`.colorize(:light_blue)}"
  end

  def load_avg
    puts "the load average is#{`sysctl -n vm.loadavg`.colorize(:light_blue)}"
  end

  def ip
    puts `ipconfig getifaddr en0`
  end
end

menu =Menu.new

menu.uptime

menu.load_avg

menu.ip
