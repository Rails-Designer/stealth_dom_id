module StealthDomId
  class Configuration
    attr_accessor :default_attribute
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
