#!/usr/bin/env ruby

# Accept one argument and pass it to a regular expression matching method
puts ARGV[0].scan(/^h.n$/).join
