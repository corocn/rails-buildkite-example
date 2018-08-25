require 'rails_helper'

RSpec.describe 'first spec', type: :feature, js: true do
  scenario do
    visit '/items'
    expect(page).to have_content('Items')
  end
end
