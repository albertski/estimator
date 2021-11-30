# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'projects/index', type: :view do
  before(:each) do
    @projects = create_list(:project, 3)
    @project = Project.new
  end

  it 'renders attributes in form' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Create Project/)
  end

  it 'renders all projects' do
    render
    expect(rendered).to match(/#{@projects.first.title}/)
    expect(rendered).to match(/#{@projects.first.description}/)
  end
end
