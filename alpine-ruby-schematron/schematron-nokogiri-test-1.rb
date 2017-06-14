#!/usr/bin/env ruby

require "nokogiri"
require "schematron-nokogiri"

SCHEMATRON_FILE = "schemas/patient.sch"

# load the schematron xml
stron_doc = Nokogiri::XML File.open(SCHEMATRON_FILE)

# make a schematron object
stron = SchematronNokogiri::Schema.new stron_doc

# load the xml document you wish to validate
xml_doc = Nokogiri::XML File.open "/path/to/my_xml_document.xml"

# validate it
results = stron.validate xml_doc

# print out the results
stron.validate(instance_doc).each do |error|
  puts "#{error[:line]}: #{error[:message]}"
end
