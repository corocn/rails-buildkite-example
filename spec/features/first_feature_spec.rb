require 'rails_helper'

RSpec.describe 'first spec', type: :feature, js: true do
  scenario do
    visit '/items'
    expect(page).to have_content('Items')

    # # if you wanna failed test and saved screenshot, uncomment below code.
    # expect(page).to have_content('NOT INCLUDED TEXT!')
  end
end
