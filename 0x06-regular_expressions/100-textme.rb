#!/usr/bin/env ruby

# Accept one argument and pass it to a regular expression matching method
match_data = ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)

# Output results in the required format
match_data.each do |match|
  puts "#{match[0]},#{match[1]},#{match[2]}"
end
