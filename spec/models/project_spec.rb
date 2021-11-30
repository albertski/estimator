# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'has a valid factory' do
    project = create(:project)
    expect(project).to be_valid
  end

  it 'is not valid without a title' do
    project = Project.new(title: '')
    expect(project).to_not be_valid
  end
end
