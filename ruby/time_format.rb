# cerner_2^5_2019
# converts int from command line param
# to HH:MM:SS format
# i just want to show off this string interpolation

sec = ARGV[0].to_i
puts '%02d:%02d:%02d' % 3.times.map { |i|
  modulo = sec % 60
  sec /= 60
  modulo
}.reverse
