class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  after_destroy :ensure_an_admin_remains
  has_secure_password

  class Error < StandardError

  end

  private

  # triggers an exception that notifies the controller
  def ensure_an_admin_remains
    raise Error, 'Can\'t delete last user!' if User.count.zero?
  end
end
