# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Project', type: :feature do
  context 'User' do
    scenario 'Should be able to delete a projct' do
      create(:project, title: "Cool Project")

      visit '/projects'

      expect(page).to have_text('Cool Project')

      page.first('.trash-icon').click

      expect(page).to have_text('Cool Project')
    end
  end
end
