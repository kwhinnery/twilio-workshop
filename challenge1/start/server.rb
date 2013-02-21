require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

post '/twiml' do
  content_type 'text/xml'
  erb :twiml, :locals => {
    :params => params
  }
end