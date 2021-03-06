require 'rails_helper'

include Warden::Test::Helpers

describe 'adding a new task' do
  fixtures :all

  before(:each) do
    projects(:bluebook).roles.create(user: users(:user))
    login_as users(:user)
  end

  it 'can add and reorder a task' do
    visit project_path(projects(:bluebook))
    fill_in 'Task', with: 'Find UFOs'
    select '2', from: 'Size'
    click_on 'Add Task'
    expect(current_path).to eq(project_path(projects(:bluebook)))
    within('#task_3') do
      expect(page).to have_selector('.name', text: 'Find UFOs')
      expect(page).to have_selector('.size', text: '2')
      expect(page).not_to have_selector('a', text: 'Dwon')
      click_on('Up')
    end
    expect(current_path).to eq(project_path(projects(:bluebook)))
    within('#task_2') do
      expect(page).to have_selector('.name', text: 'Find UFOs')
    end
  end
end
