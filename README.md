# Randomua

[![Gem Version](https://badge.fury.io/rb/randomua.svg)](https://rubygems.org/gems/randomua)
[![GitHub license](https://img.shields.io/github/license/picatz/randomua)](https://github.com/picatz/randomua/blob/master/LICENSE.txt)

![random_panda](http://i.imgur.com/cdoYV6s.jpg)

A command-line application to generate random user agent strings. Acting as a command-line interface to the [user-agent-randomizer](https://github.com/asconix/user-agent-randomizer) gem without the need to do any ruby programming.

## Installation

    $ gem install randomua

## Usage

```
$ randomua -h
random user agent | Generate a random user agent string.
  -c, --crawler            Gereate a random crawler user agent string
  -d, --desktop-browser    Gereate a random desktop browser user agent string
  -m, --mobile-browser     Gereate a random mobile browser user agent string
  -o, --console            Gereate a random console user agent string
  -f, --offline-browser    Gereate a random offline browser user agent string
  -e, --email-client       Gereate a random email client user agent string
  -l, --link-checker       Gereate a random link checker user agent string
  -a, --email-collector    Gereate a random email collector user agent string
  -v, --validator          Gereate a random validator user agent string
  -r, --feed-reader        Gereate a random feed reader user agent string
  -i, --library            Gereate a random library user agent string
  -u, --cloud-platform     Gereate a random cloud platform user agent string
  -t, --other              Gereate a random other user agent string
  -s, --version            Print version and exit
  -h, --help               Show this message
  ```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

