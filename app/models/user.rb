class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true, unless: :user_created
  validates :email, presence: true

  def user_created
    self.id.present?
  end
end
