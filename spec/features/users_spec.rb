require 'rails_helper'

describe 'Single user page', type: :feature do

  it do
    visit '/users/1'

    within('table tbody tr:first-child') do
      expect(page).to have_selector('td:first-child', text: 'Albert')
      expect(page).to have_selector('td:nth-child(2)', text: 'Einstein')
    end
  end
end

describe 'Users page', type: :feature do

  it do
    visit '/users'

    within('table tfoot tr') do
      expect(page).to have_selector('td:first-child', text: 'Average age')
      expect(page).to have_selector('td:nth-child(2)', text: '32')
    end
  end

end