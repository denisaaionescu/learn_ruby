class Timer
  SECONDS_IN_MINUTE = 60
  SECONDS_IN_HOUR = 60 * 60
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(n)
    if n >= 0 && n < 10
      format("%02d", n)
    else
      n.to_s
    end
  end

  def time_string
    hours = @seconds / SECONDS_IN_HOUR
    minutes = (@seconds % SECONDS_IN_HOUR) / SECONDS_IN_MINUTE
    secs = @seconds % SECONDS_IN_MINUTE

    "#{padded(hours)}:#{padded(minutes)}:#{padded(secs)}"
  end
end
