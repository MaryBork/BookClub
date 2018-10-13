require 'rails_helper'

RSpec.describe 'Users Pages' do
  describe 'User Index Page'
    before(:each) do
      @user_1 = User.create(name: "John Smith")
      @user_2 = User.create(name: "Jennifer Doe")
      @user_3 = User.create(name: "Calvin McCarthy")
    end

    it 'shows all the users in a list' do

      visit "/users"

      expect(page).to have_content(@user_1.name)
      expect(page).to have_content(@user_1.name)
    end
  end

  describe 'User Show Page' do

    it ''
end
