require 'rails_helper'

RSpec.describe NotesController, :type => :request do

  it 'GET show' do
    get '/users/1'

    html = '<td>Albert</td>'
    expect(response.body).to match(html)
  end

end


