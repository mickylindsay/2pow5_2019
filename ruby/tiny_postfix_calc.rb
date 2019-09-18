#!/usr/bin/env ruby

# cerner_2^5_2019
# a very small postfix calculator
# no input validation,
# if you give valid input, you get an answer
# if you give invalid input, you don't (in myriad ways)
# ./tiny_postfix_calc.rb "4 5 +"
# > 9
# ./tiny_postfix_calc.rb "1.2 6 * 5 / 2 3 4 * * +"
# > 25.44
# ./tiny_postfix_calc.rb 42 0 /
# > Infinity (like thats the real output, that what ruby says)


puts [].tap {|s|
  a=ARGV.join(' ').scan(/-?\d+(?:\.\d+)?|[\+\-\*\/\(\)]/).reverse
  while(b=a.pop)
    s.push (Float(b) rescue s.pop(2).yield_self{|p| p[0].send b.to_sym, p[1]})
  end
}[0]
