# Creates a 24-hour clock with hours, minutes
# and seconds, which counts up according to
# the CPU speed until reaching wraparound.

type hour is wraparound integer 0... 23
type minute is wraparound integer 0... 59
type second is wraparound integer 0... 59

program clock
  requires type hour, minute, second
  writes external stdout

  variable h is hour 0
  variable m is minute 0
  variable s is second 0

  write 'Clock has started' to stdout

  loop
    write h, ':', m, ':', s to stdout

    increment s
    if s is second 0
      increment m
      if m is minute 0
        increment h
          if h is hour 0
            break

  write 'Clock has stopped' to stdout
