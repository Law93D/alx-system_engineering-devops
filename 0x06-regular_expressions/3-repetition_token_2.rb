#!/usr/bin/env ruby

# Accept one argument and pass it to a regular expression matching method
puts ARGV[0].scan(/hbt{1,}n/).join