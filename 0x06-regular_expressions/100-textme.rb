#!/usr/bin/env ruby
# puts ARGV[0].scan(/\[from:(.*)\] \[to:(.*)\] \[flags:(.*-1)\]/).join(',') other solution (using groups)
puts ARGV[0].scan(/\[from:.*\] \[to:.*\] \[flags:.*-1\]/).join().split(' ').map{|str| str[(str.index(":") + 1)..-2]}.join(',')
