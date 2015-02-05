$: << File.expand_path("../lib", __FILE__)

require "oss_front/version"

Gem::Specification.new do |s|
  s.name        = "oss_front"
  s.version     = OssFront::VERSION
  s.date        = "2015-02-05"
  s.summary     = "Unified REST/JSON gateway for various ISP Operations Support Systems."
  s.description = <<-DESC.gsub(/^\s+/, '')
    Oss_front is a Webmachine-based library aimed at serving
    REST/JSON and providing a unified Web API for some Internet Service Providers,
    that provide their own XMLRPC or whatever services. Pluggable architecture.
    Only ships with dummy OSS for copyright reason.
  DESC
  s.authors     = ["Arnaud Sellenet"]
  s.email       = "arnodmental@gmail.com"
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files       = `git ls-files`.split("\n")
  s.require_paths    = ["bin"]
  s.license     = "MIT"

  s.add_runtime_dependency     'webmachine'
  s.add_development_dependency 'webmachine-test'
end



