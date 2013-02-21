require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

# Create a Twilio Client to use
# Replace "ENV['TWILIO_ACCOUNT_SID']" with your account SID
# Replace "ENV['TWILIO_AUTH_TOKEN']" with your auth token
# set twilio_number to be a Twilio number you purchased
client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
twilio_number = '6513566349'

# This is a simple in-memory "database" of orders
nextIndex = 1
orders = [
  {:index => 0, :details => 'Large pepperoni and sausage', :phone => '6512080532', :complete => false}
]

# Display a web page with all current orders
get '/' do
  erb :index, :locals => {
    :orders => orders
  }
end

# Handle POST request from the browser to fill an order
post '/fillOrder' do
  # Loop through our in-memory database and find our order
  orders.each do |order|
    if order[:index] == Integer(params[:id])
      order[:complete] = params[:status] == 'true'
      
      #if the order is complete, send out a text message
      if order[:complete] 
        client.account.sms.messages.create(
          :to => order[:phone],
          :from => twilio_number,
          :body => 'Your order has been filled!  Hot pizza incoming!'
        )
      end
    end
  end
  
  #send back text to the client
  'request processed'
end

# Handle HTTP POST request from Twilio after a text message
post '/placeOrder' do
  # add order to our "database"
  orders.push({
    :index => nextIndex,
    :details => params[:Body],
    :phone => params[:From],
    :complete => false
  })
  
  #increment next index for our "database"
  nextIndex += 1
  
  # render response back to Twilio
  content_type 'text/xml'
  erb :twiml
end