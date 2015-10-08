require 'test/unit'
require 'shoulda'
require 'soda/publisher'
require 'json'
require 'webmock/test_unit'
require 'mocha/test_unit'

# NOTE: These tests are by no means exhaustive, they're just a start
class SODAPublisherTest < Test::Unit::TestCase
  DOMAIN = 'fakehost.socrata.com'
  APP_TOKEN = 'totallyfakenotrealapptoken'
  USER = 'fakeuser@socrata.com'
  PASSWORD = 'fakepassword'

  # Helpers
  def resource(name)
    File.new(File.dirname(__FILE__) + '/resources/' + name)
  end

  context 'Upserting CSV files' do
    setup do
      @publisher = SODA::Publisher.new
    end


    should 'insert record from fake crimes csv file' do
      assert_equal 'fakeCrimes', @publisher.upsertCsv("fakeCrimes", "/fake_crimes.csv");
    end

    should 'update record from fake crimes csv file' do
      assert_equal 'fakeCrimes', @publisher.upsertCsv("fakeCrimes", "/fake_crimes.csv");
    end


    should 'delete record from fake crimes csv file' do
      assert_equal 'fakeCrimes', @publisher.upsertCsv("fakeCrimes", "/fake_crimes.csv");
    end
  end
end
