=begin
In this exercise you'll be processing log-lines.

Each log line is a string formatted as follows: "[<LEVEL>]: <MESSAGE>".

There are three different log levels:

INFO
WARNING
ERROR
You have three tasks, each of which will take a log line and ask you to do something with it.
There are lots of ways to solve these tasks - choose your favourite methods from the examples above
and see what you can come up with.
=end
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[.*?\]:/,'').strip
  end

  def log_level
    @line.match(/\[(.*?)\]/)[1].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end