#!/usr/bin/env ruby

# cerner_2^5_2019
# tiny (106 byte) tcp echo server on port 8080
require 'socket'
Socket.tcp_server_loop(8080){|c|Thread.new{loop{p(l=c.readline);c.puts l}rescue c.close}}
