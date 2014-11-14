require 'rails_helper'

describe User do

  it 'can not view a project that is not part of' do
    user = User.new
    project = Project.new
    expect(user.can_view?(project)).to be_falsy
  end

  it 'can view a project that is part of' do
    user = User.create!(email: 'user@example.com', password: 'password')
    project = Project.create!(name: 'Project Gutenberg')
    user.roles.create(project: project)
    expect(user.can_view?(project)).to be_truthy
  end

  describe 'public roles' do
    let(:user) { User.new }
    let(:project) { Project.new }

    it 'allows an admin to view a project' do
      user.admin = true
      expect(user.can_view?(project)).to be_truthy
    end

    it 'allows a poblic project to be seen by anyone' do
      project.public = true
      expect(user.can_view?(project)).to be_truthy
    end
  end
end
