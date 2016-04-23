module DevCalendar
  class << self

    def get_month(now, x)
      ((now.month + x) % 12) + 1
    end

    def get_year(now, x)
      now.year + (get_month(now,0) + x - 1) / 12
    end      

    def meeting_date(month, year)
      date = DateTime.new(year, month, 14)
      case
      when date.saturday? then date.day + 2
      when date.sunday? then date.day + 1
      else date.day
      end
    end

    def testing_date(month, year)
      date = DateTime.new(year, month, -1)
      case
      when date.friday? then date.day - 1
      when date.saturday? then date.day - 2
      when date.sunday? then date.day - 3
      else date.day
      end
    end

  end
end