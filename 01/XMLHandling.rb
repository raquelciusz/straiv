require "nokogiri"
require 'ostruct'

# parsing xml doc with Nokogiri
document = Nokogiri.XML(File.open('xml_uncompressed.xml'))

# data was coming nil to at_css search, to avoid, was necessary remove_whitespace!
document.remove_namespaces!

# creating struct
data_struct = OpenStruct.new

# search and add data to struct
data_struct.id = document.at_css("//HotelReservationID[@ResID_Type='10']").attr("ResID_Value")
data_struct.external_id = document.at_css("//HotelReservationID[@ResID_Type='16']").attr("ResID_Value")
data_struct.state = document.at_css("//HotelReservation").attr("ResStatus")
data_struct.rate_plan = document.at_css("//RatePlanDescription").text.strip
data_struct.services = document.xpath("//Services/Service").collect { |service| service.text.strip }.join(', ')

puts data_struct
