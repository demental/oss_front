require 'webmachine'

Dir["#{File.dirname(__FILE__)}/resources/*"].each {|file| require file }

module OssFront
  App = Webmachine::Application.new do |app|
    app.routes do
      add ["isp", :isp, "accounts"], Resources::Accounts
    end
  end
end
