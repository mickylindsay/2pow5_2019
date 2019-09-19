#!/usr/bin/env ruby

# cerner_2^5_2019
# A little code golf inspired by another submission https://github.com/v1nayv/2-5
# Takes string from ARGV and converts every other letter to upcase or downcase
# It also uses so many things i love,
# 1) tail recursive lambda functions 2) bitwise up/down casing 3) regex
# and its only 83 bytes

# Ex ./alternate_letter_case_conversion.rb testTEST
# > TeStTeSt
p (t=->(s,u=0){s=~/./?(t[s.chop,!u]+(n=s[-1].ord;u ?n|32:n&~32).chr):''})[ARGV[0]]

# Then instead of starting from scratch and going the lambda route, i golfed v1nayv's solution... its better
# same outputs but only 69 bytes
i=0;s='';ARGV[0].each_char{|c|c=c.ord;s<<((i+=1)%2>0?c&~32:c|32)};p s
