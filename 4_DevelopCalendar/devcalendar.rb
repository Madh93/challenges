require_relative 'devcalendar/devcalendar'
require_relative 'devcalendar/generator'
require_relative 'devcalendar/utils'

# Main
args = DevCalendar::Utils::ArgParser.parse ARGV

DevCalendar::Generator.new do |g|
  g.months =  args.months
  g.file = args.file
end.export!