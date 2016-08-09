require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/wordformatter')

require( 'json' )

get( '/' ) do
  erb( :home )
end


get( '/address') do
  content_type( :json )
  result = { 
    address: '3 ARGYLE HOUSE', 
    building: 'CODEBASE',
    postcode: 'e13 zqf', 
    phone: '0131558030' }

    result[:postcode] = result[:postcode].upcase 

  result.to_json()

end


get ( '/to_camelcase/:input') do
  wordformatter = WordFormatter.new( params[:input].to_s )
  result = "#{ wordformatter.to_camelcase()}"
  result.to_json
end  




# Create a route with a dynamic path so your app can CamelCase text. Send the code back in HTML or JSON

