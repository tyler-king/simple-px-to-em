#!/usr/bin/env ruby
require 'optparse'

options = {}

optparse = OptionParser.new do |opts|
    opts.banner = "PX to EM Converter"

    opts.on("-b", "--base NUMBER", Integer, "Base pixel size of document") do |value|
        options[:base] = value
    end

    opts.on("-r", "--required NUMBER", Integer, "Font required in pixels") do |value|
      options[:required] = value
    end
end

optparse.parse!

if options[:base].nil? || options[:required].nil?
    puts "Error: Missing arguments"
    puts optparse
    exit!
end

calculation = 1  / options[:base].to_f * options[:required].to_f;
puts "font-size: " + calculation.to_s + "em;"