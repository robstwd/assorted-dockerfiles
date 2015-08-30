#!/usr/bin/env ruby

# source:
# https://github.com/ohler55/ox

# guides found here
# https://github.com/ohler55/ox/blob/master/lib/ox/element.rb
# http://stackoverflow.com/questions/21786005/how-to-open-parse-and-process-xml-file-with-ox-gem-like-with-nokogiri-gem
# http://www.ohler.com/ox/Ox/Element.html#locate-instance_method

require 'ox'

xml_file = 'FHIR_patient-example.xml'

file = IO.read(xml_file)

xml = Ox.parse(file)

#~ puts xml.inspect

# print the root node
puts "\nExample of determining the root node:"
puts "    Root node: #{xml.nodes[0].value}"

# print the full namespace, as a hash
puts "\nExample of getting a hash of attributes:"
puts "    XML namepace hash: #{xml.Patient.attributes}"

# print the patient's full name
puts "\nExample of getting an attribute's value:"
firstname = xml.Patient.locate("name/given/@value")[0]
surname   = xml.Patient.locate("name/family/@value")[0]
puts "    Patient's full name: #{firstname} #{surname.upcase}"

# print the patient's ID number
puts "\nPrint the patient's ID number:"
id_number = xml.Patient.locate("identifier/value/@value")[0]
puts "    Patient's identifier: #{id_number}"

# print the patient's date of birth
puts "\nPrint the patient's date of birth:"
dob = xml.Patient.locate("birthDate/@value")[0]
puts "    #{dob}"

# print the patient's phone number
puts "\nPrint the patient's phone number:"
phone_number = xml.Patient.locate("telecom/value/@value")[0]
phone_use    = xml.Patient.locate("telecom/use/@value")[0]
puts "    #{phone_number} (#{phone_use})"

# print the patient's address
puts "\nPrint the patient's address:"
address_use     = xml.Patient.locate("address/use/@value")[0]
address_line    = xml.Patient.locate("address/line/@value")[0]
address_city    = xml.Patient.locate("address/city/@value")[0]
address_zip     = xml.Patient.locate("address/zip/@value")[0]
address_country = xml.Patient.locate("address/country/@value")[0]
puts "    #{address_line} #{address_city}"
puts "    #{address_zip}"
puts "    #{address_country}"
