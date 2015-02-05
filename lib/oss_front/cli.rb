require 'thor'
require_relative '../oss_front'

module OssFront
  class CLI < Thor

    desc 'server', 'Run the OSS Front server'
    def server
      require_relative './app'

      OssFront::App.run
    end
  end
end
