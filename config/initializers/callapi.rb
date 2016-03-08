Callapi::Config.configure do |config|
  config.api_host = 'http://localhost:3000'
  config.default_response_parser = Callapi::Call::Parser::Json::AsObject
end

Callapi::Routes.draw do
  get 'users'
  get 'users/:id'
  get 'notes'
  get 'notes/:id'
end