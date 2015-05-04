require 'rails_helper'

RSpec.describe UsersController, :type => :request do

  it 'GET show' do
    get '/users'

    html = '<th>Total</th><th>Average age</th>'
    expect(response.body).to match(html)

    html = '<td>2</td><td>32.5</td>'
    expect(response.body).to match(html)
  end

end


