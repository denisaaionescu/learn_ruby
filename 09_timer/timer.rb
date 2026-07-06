class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(s)
    @seconds = s
  end

  def padded(n)
    if n < 10
      "0#{n}"
    else
      n.to_s
    end
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    secs = @seconds % 60

    "#{padded(hours)}:#{padded(minutes)}:#{padded(secs)}"
  end
end
