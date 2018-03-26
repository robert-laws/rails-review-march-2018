require "rails_helper"

# User model tests

describe 'User' do
  it 'is valid with valid attributes' do
    expect(User.new(username: "bobcobb")).to be_valid
  end
end
