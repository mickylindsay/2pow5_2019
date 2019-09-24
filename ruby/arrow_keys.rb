#!/usr/bin/env ruby

# cerner_2^5_2019
# reads raw unblock input from keyboard
# prints arrow key presses, any other key to exit

begin system("stty raw -echo")
  loop do
    i = []
    begin
      loop { i = STDIN.read_nonblock(3) }
    rescue IO::WaitReadable
      exit unless i.empty? || i[0..1] == "\e["
      print %w(up down right left)[i[2].ord-'A'.ord]+"\r\n" if i[2]
    end
  end
ensure system("stty -raw echo") end
