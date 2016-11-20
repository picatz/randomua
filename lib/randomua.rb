require 'trollop'
require 'colorize'
require 'user_agent_randomizer'

module Randomua

  VERSION = "1.0.0"

  def self.run_application!
    # Default to a help menu
    foo = ARGV[0] || ARGV[0] = '-h'

    opts = Trollop::options do
      banner "random user agent".blue.red + " Generate a random user agent string.".bold
      version "#{Randomua::VERSION}"
      opt :crawler, "Gereate a random crawler user agent string"
      opt :desktop_browser, "Gereate a random desktop_browser user agent string"
      opt :mobile_browser, "Gereate a random mobile_browser user agent string"
      opt :console, "Gereate a random console user agent string"
      opt :offline_browser, "Gereate a random offline_browser user agent string"
      opt :email_client, "Gereate a random email_client user agent string"
      opt :link_checker, "Gereate a random link_checker user agent string"
      opt :email_collector, "Gereate a random email_collector user agent string"
      opt :validator, "Gereate a random validator user agent string"
      opt :feed_reader, "Gereate a random feed_reader user agent string"
      opt :library, "Gereate a random library user agent string"
      opt :cloud_platform, "Gereate a random cloud_platform user agent string"
      opt :other, "Gereate a random other user agent string"
    end

    # check for a filter
    filter = Hash[opts.keys.keep_if { |k| k.to_s =~ /_given\b/ } .collect { |i| [i, true] } ]

    unless filter.empty?
      return puts UserAgentRandomizer::UserAgent.fetch(type: "crawler").string         if opt.crawler
      return puts UserAgentRandomizer::UserAgent.fetch(type: "desktop_browser").string if opt.desktop_browser
      return puts UserAgentRandomizer::UserAgent.fetch(type: "mobile_browser").string  if opt.mobile_browser
      return puts UserAgentRandomizer::UserAgent.fetch(type: "console").string         if opt.console
      return puts UserAgentRandomizer::UserAgent.fetch(type: "offline_browser").string if opt.offline_browser
      return puts UserAgentRandomizer::UserAgent.fetch(type: "email_client").string    if opt.email_client
      return puts UserAgentRandomizer::UserAgent.fetch(type: "link_checker").string    if opt.link_checker
      return puts UserAgentRandomizer::UserAgent.fetch(type: "email_collector").string if opt.email_collector
      return puts UserAgentRandomizer::UserAgent.fetch(type: "validator").string       if opt.validator
      return puts UserAgentRandomizer::UserAgent.fetch(type: "feed_reader").string     if opt.feed_reader
      return puts UserAgentRandomizer::UserAgent.fetch(type: "library").string         if opt.library
      return puts UserAgentRandomizer::UserAgent.fetch(type: "cloud_platform").string  if opt.cloud_platform
      return puts UserAgentRandomizer::UserAgent.fetch(type: "other").string           if opt.other
    else
      puts UserAgentRandomizer::UserAgent.fetch.string
    end
  end

end
