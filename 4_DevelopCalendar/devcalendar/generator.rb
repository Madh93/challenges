require 'date'
require 'csv'

module DevCalendar
  class Generator

    attr_accessor :months, :file
    attr_reader :dates

    def initialize    
      @dates = []
      yield self if block_given?
    end

    def export!
      generate_dates if @dates.empty?
      CSV.open(@file, 'w') do |csv|
        csv << ["Month", "Mid Month Meeting Date", "End of Month Testing Date"]
        @dates.each do |d|
          csv << d
        end
      end
    end

    private

    def generate_dates
      now = DateTime.now
      @months.times do |x|
        month, year = DevCalendar.get_month(now, x), DevCalendar.get_year(now, x)
        @dates << []
        @dates[x] << "#{month}/#{year}"
        @dates[x] << DevCalendar.meeting_date(month, year)
        @dates[x] << DevCalendar.testing_date(month, year)
      end
    end
  end
end