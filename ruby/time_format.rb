# cerner_2^5_2019
# converts int from command line param
# to HH:MM:SS format
# i just want to show off this string interpolation

s=ARGV[0].to_i;puts ('%02d:'*3).chop%3.times.map{a=s%60;s/=60;a}.reverse
