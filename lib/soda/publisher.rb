#!/usr/bin/env ruby
#
# Ruby publisher to the RESTful Socrata Open Data API
#
# For more details, check out http://dev.socrata.com/publishers/getting-started.html
#

require 'sys/uname'
include Sys

module SODA
  class Publisher
    class << self
    end

      def initialize(config = {})
        @config = Hashie.symbolize_keys! config
        @user_agent = SODA::Client.generate_user_agent
      end

      def upsertCsv(csv_name, csv_location)
        return csv_name
      end

private
      # If no record, create
      def insert
      end
      # If record, update
      def update
      end

      # If there is already a record AND :deleted is true in the CSV, this record will be deleted.
      def delete
      end
    end
end
