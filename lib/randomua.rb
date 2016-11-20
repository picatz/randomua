require 'trollop'
require 'colorize'
require 'user_agent_randomizer'

module Randomua

  VERSION = "1.0.0"

  def self.run_application!
    # Default to a help menu
    foo = ARGV[0] || ARGV[0] = '-h'

    opts = Trollop::options do
      banner "random user agent".blue.red + " | " + "Generate a random user agent string.".bold
      version "#{Randomua::VERSION}"
      opt :crawler, "Gereate a random crawler user agent string"
      opt :desktop_browser, "Gereate a random desktop browser user agent string"
      opt :mobile_browser, "Gereate a random mobile browser user agent string"
      opt :console, "Gereate a random console user agent string"
      opt :offline_browser, "Gereate a random offline browser user agent string"
      opt :email_client, "Gereate a random email client user agent string"
      opt :link_checker, "Gereate a random link checker user agent string"
      opt :email_collector, "Gereate a random email collector user agent string"
      opt :validator, "Gereate a random validator user agent string"
      opt :feed_reader, "Gereate a random feed reader user agent string"
      opt :library, "Gereate a random library user agent string"
      opt :cloud_platform, "Gereate a random cloud platform user agent string"
      opt :other, "Gereate a random other user agent string"
    end

    # check for a filter
    filter = Hash[opts.keys.keep_if { |k| k.to_s =~ /_given\b/ } .collect { |i| [i, true] } ]

    unless filter.empty?
      return puts UserAgentRandomizer::UserAgent.fetch(type: "crawler").string         if opts.crawler
      return puts UserAgentRandomizer::UserAgent.fetch(type: "desktop_browser").string if opts.desktop_browser
      return puts UserAgentRandomizer::UserAgent.fetch(type: "mobile_browser").string  if opts.mobile_browser
      return puts UserAgentRandomizer::UserAgent.fetch(type: "console").string         if opts.console
      return puts UserAgentRandomizer::UserAgent.fetch(type: "offline_browser").string if opts.offline_browser
      return puts UserAgentRandomizer::UserAgent.fetch(type: "email_client").string    if opts.email_client
      return puts UserAgentRandomizer::UserAgent.fetch(type: "link_checker").string    if opts.link_checker
      return puts UserAgentRandomizer::UserAgent.fetch(type: "email_collector").string if opts.email_collector
      return puts UserAgentRandomizer::UserAgent.fetch(type: "validator").string       if opts.validator
      return puts UserAgentRandomizer::UserAgent.fetch(type: "feed_reader").string     if opts.feed_reader
      return puts UserAgentRandomizer::UserAgent.fetch(type: "library").string         if opts.library
      return puts UserAgentRandomizer::UserAgent.fetch(type: "cloud_platform").string  if opts.cloud_platform
      return puts UserAgentRandomizer::UserAgent.fetch(type: "other").string           if opts.other
    else
      puts UserAgentRandomizer::UserAgent.fetch.string
    end
  end

end
