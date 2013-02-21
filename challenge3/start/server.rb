require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

# TODO:
# Replace "ENV['TWILIO_ACCOUNT_SID']" with your account SID
# Replace "ENV['TWILIO_AUTH_TOKEN']" with your auth token
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

# set up Capability token generator
capability = Twilio::Util::Capability.new account_sid, auth_token
# TODO: Create a TwiML application that points to the /twiml URL below
# Then, put the SID here
capability.allow_client_outgoing 'AP6c460da3d479476fb3ebec868f307203'

# Render an HTML page which contains the "click to call" functionality
get '/' do
  erb :index, :locals => {
    :token => capability.generate
  }
end

post '/twiml' do
  content_type 'text/xml'
  erb :twiml, :locals => {
    :params => params
  }
end