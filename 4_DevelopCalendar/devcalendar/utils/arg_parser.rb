require 'optparse'

MONTHS = 6
FILE = "devcalendar.csv"

Options = Struct.new(:months, :file)

module DevCalendar
  module Utils
    class ArgParser
      def self.parse(options)
        args = Options.new(MONTHS, FILE)

        opt_parser = OptionParser.new do |opts|
          opts.banner = "Usage: ruby devcalendar.rb [options]"

          opts.on("-m", "--months NUMBER", "Number of months") do |m|
            args.months = m.to_i
          end

          opts.on("-f", "--file NAME", "CSV file name") do |f|
            args.file = f
          end

          opts.on("-h", "--help", "Prints this help") do
            puts opts
            exit
          end
        end

        opt_parser.parse!(options)
        return args
      end
    end
  end
end