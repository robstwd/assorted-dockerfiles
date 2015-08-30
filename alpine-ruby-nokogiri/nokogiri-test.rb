#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

# ==================================================
URL            = 'ftp://ftp2.bom.gov.au/anon/gen/fwo/IDQ10095.xml'

XPATH_FORECAST = "//product/forecast/area[@aac='QLD_ME001']/forecast-period[@index='0']/text[@type='forecast']/text()"

# ==================================================

doc = Nokogiri::XML(open(URL))
forecast = doc.xpath(XPATH_FORECAST)

puts "Brisbane observations from the Australian Bureau of Meterology"
puts "At #{Time.now}"
puts forecast

