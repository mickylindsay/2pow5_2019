#!/usr/bin/env ruby

# cerner_2^5_2019
# A little code golf inspired by another submission https://github.com/lollasravani/cerner_2-5_2019
# Reads integer input from STDIN and then prints a diamond with that many columns

c=gets.to_i;s=->i{puts " "*(c-i)+" *"*i};c.times(&s).downto 1,&s
