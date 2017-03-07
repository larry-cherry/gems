require "instabus_austin/version"
require 'net/http'
require 'json'

module InstabusAustin
 
  def self.stops(route, direction)
    uri = URI("http://instabus.org/data/stops_#{route}_#{direction}.json")
    response = Net::HTTP.get(uri)
    begin
      return JSON.parse(response)
    rescue
      puts "Page Not Found for route #{route}, direction #{direction}"
    end
  end
  def self.pull_routes
  	uri = URI("http://instabus.org/data/routes.json")
  	begin
  	  return JSON.parse(Net::HTTP.get(uri))
    rescue
      puts "Routes not found"
    end
  end

end
