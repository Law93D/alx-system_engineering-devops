#!/usr/bin/env ruby

# Accept one argument and pass it to a regular expression matching method
puts ARGV[0].scan(/htn|hbtn/).join
