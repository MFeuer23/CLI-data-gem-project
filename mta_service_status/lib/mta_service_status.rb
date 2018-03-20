require 'open-uri'
require 'pry'
require 'nokogiri'

module Scraper
end
require_relative "./mta_service_status/version"
require_relative "./mta_service_status/cli"
require_relative "./mta_service_status/train"
require_relative "./mta_service_status/scraper"
require_relative "./concerns/scraper_mod"
