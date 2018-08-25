require 'rails_helper'

RSpec.describe 'first spec', type: :feature, js: true do
  scenario do
    visit '/items'
    expect(page).to have_content('Items')

    # # uncomment below code then spec failed and saved screenshot.
    # expect(page).to have_content('NOT INCLUDED TEXT!')
  end
end
