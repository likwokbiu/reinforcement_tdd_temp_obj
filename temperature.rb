class Temperature
  def initialize(options = {})
    @f_temperature = options[:f] || nil
    @c_temperature = options[:c] || nil
  end

  def to_fahrenheit
    if @c_temperature == nil
      return @f_temperature
    else
      @c_temperature * 9.0 / 5.0 + 32
    end
  end

  def to_celsius
    if @f_temperature == nil
      return @c_temperature
    else
      (@f_temperature - 32) * 5.0 / 9.0
    end
  end
end
