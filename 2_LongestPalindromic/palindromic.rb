require_relative 'core_ext/string'

# Main
if ARGV[0]
  puts ARGV[0].longest_palindromic
else
  puts "Bad arguments..."
  puts 'Try: ruby palindromic "abbX larutanatural abba"'
end