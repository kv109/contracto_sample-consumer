require 'rails_helper'

RSpec.describe UsersController, :type => :request do

  it 'GET index' do
    get '/users'

    expect(response.body).to match('<th>Total</th><th>Average age</th>')
    expect(response.body).to match('<td>2</td><td>32.5</td>')
  end


end



#     stub_request_with_body <<BODY
# [
#   { "id":1, "first_name":"Albert", "last_name":"Einstein", "age":30 },
#   { "id":2, "first_name":"Kurt",   "last_name":"Godel",    "age":35 }
# ]
# BODY
#
# def stub_request_with_body(i)
# end