class Temperature 
  FREEZING_POINT_F = 32
  F_TO_C_FACTOR = 5.0 / 9
  C_TO_F_FACTOR = 9.0 / 5

  def initialize(options)
    if options[:c]
      @celsius = options[:c]
    else 
      @celsius = (options[:f] - FREEZING_POINT_F) * F_TO_C_FACTOR
    end
  end

  def in_celsius
    @celsius
  end

  def in_fahrenheit
    @celsius * C_TO_F_FACTOR + FREEZING_POINT_F
  end
  
  def self.from_celsius(c)
    new(c: c)
  end

  def self.from_fahrenheit(f)
    new(f: f)
  end
end

class Celsius < Temperature
  def initialize(degrees)
    super(c: degrees)
  end
end

class Fahrenheit < Temperature
  def initialize(degrees)
    super(f: degrees)
  end
end
