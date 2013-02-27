require "rubygems"
require "sinatra"
require "twilio-ruby"

# TODO:
# Replace "ENV["TWILIO_ACCOUNT_SID"]" with your account SID
# Replace "ENV["TWILIO_AUTH_TOKEN"]" with your auth token
# Replace "ENV["TWILIO_TWIML_APP_SID"]" with your TWIML App SID
account_sid   = ENV["TWILIO_ACCOUNT_SID"]
auth_token    = ENV["TWILIO_AUTH_TOKEN"]
twiml_app_sid = ENV["TWIML_APP_SID"]

# set up Capability token generator
capability = Twilio::Util::Capability.new account_sid, auth_token
capability.allow_client_outgoing twiml_app_sid

# Render an HTML page which contains the "click to call" functionality
get "/" do
  erb :index, locals: { token: capability.generate }
end

post "/twiml" do
  builder :twiml
end
