module OssFront
  def self.configure &block
    yield config
  end

  def self.config
    @config ||= Config.new
  end

  class Config
    attr_accessor :adapters
  end
end
