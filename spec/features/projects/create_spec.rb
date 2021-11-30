# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Project', type: :feature do
  context 'User' do
    scenario 'Can create a new project and project should appear on the same page' do
      visit '/projects'

      fill_in 'Title', with: 'My Title'
      fill_in 'Description', with: 'Project Description'

      click_button 'Create Project'

      expect(page).to have_text('My Title')
    end
  end
end
