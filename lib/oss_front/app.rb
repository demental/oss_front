require 'webmachine'

Dir["#{File.dirname(__FILE__)}/resources/*"].each {|file| require file }

module OssFront
  App = Webmachine::Application.new do |app|
    app.add_route ['*'], Resources::Root
  end
end
