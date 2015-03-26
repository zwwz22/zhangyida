require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'add a new user' do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
  end

  describe 'error for new a user' do
    it 'when has no name' do
      user = build(:user,:name => nil)
      user.valid?
      expect(user.errors[:name]).to include "can't be blank"
    end
    it 'when has no password' do
      user = build(:user,:password => nil)
      user.valid?
      expect(user.errors[:password]).to include "can't be blank"
    end
  end
end
