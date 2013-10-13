# Really Simple Chat Client (RSCC)
# with Reduction in Suicide due to C Compilers (RSCC)
# 
# Author: Shaun Whitely
# 
# Written in 10 minutes, so don't expect much.

require 'socket'

puts 'Enter host address'
addr = gets

s = TCPSocket.new addr.strip, 9034


Thread.new do       # thread for input
  while true
    s.puts(gets)    # send user input
  end
end

while true
  puts s.gets       # output received data to stdout
end