def time_format(seconds)
  display_weeks = ""
  display_days = ""
  display_hours = ""
  display_minutes = ""
  display_seconds = "#{seconds}s"

  if seconds >= 60
    minutes = seconds/60
    display_seconds = "#{seconds % 60}s"
    display_minutes = "#{minutes}m "

    if minutes >= 60
      hours = minutes/60
      display_minutes = "#{minutes % 60}m "
      display_hours = "#{hours}h "

      if hours >= 24
        days = hours/24
        display_hours = "#{hours % 24}h "
        display_days = "#{days}d "

        if days >= 7
          weeks = days/7
          display_days = "#{days % 7}d "
          display_weeks = "#{weeks}w "
        end
      end
    end
  end

  return display_weeks + display_days + display_hours + display_minutes + display_seconds
end

if __FILE__ == $0
  p time_format(0)      == "0s"
  p time_format(1)      == "1s"
  p time_format(59)     == "59s"
  p time_format(60)     == "1m 0s"
  p time_format(61)     == "1m 1s"
  p time_format(3600)   == "1h 0m 0s"
  p time_format(3601)   == "1h 0m 1s"
  p time_format(3661)   == "1h 1m 1s"
  p time_format(86400)  == "1d 0h 0m 0s"
  p time_format(90061)  == "1d 1h 1m 1s"
  p time_format(604800) == "1w 0d 0h 0m 0s"
  p time_format(694861) == "1w 1d 1h 1m 1s"
end
