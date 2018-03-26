require "rails_helper"

# User model tests

describe 'User' do
  it 'is valid with valid attributes' do
    expect(User.new(username: "bobcobb", email: "bobcobb@net.com")).to be_valid
  end
end
