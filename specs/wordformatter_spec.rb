require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../models/wordformatter.rb')

class TestWordFormatter < Minitest::Test

def setup
  @wordformatter = WordFormatter.new("code clan")
end

def test_to_uppercase
  assert_equal("E13 ZQF", @wordformatter.to_uppercase)
end 

def test_to_camelcase
  assert_equal("CodeClan", @wordformatter.to_camelcase)
end 

  # Write and test-drive a WordFormatter class with a method to format the postcode to upcase which should then be used in your 'address' route.

  # Create a method to camelcase strings e.g. 'code clan' should become "CodeClan"

end