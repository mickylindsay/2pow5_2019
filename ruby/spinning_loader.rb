#!/usr/bin/env ruby

# cerner_2^5_2019
# prints some unicode and ansi escape sequences to make a little loading bar
# gonna be *nix only

begin
  print "\e[?25l"
  20.times{
    print "\e[#{(31..37).to_a.sample}m━"
    "┗┏┓┛".each_char { |x| print x; sleep 0.1; print "\e[1D" }
  }
rescue Interrupt
ensure
  print "━\e[0m\e[?25h\n"
end
