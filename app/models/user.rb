class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password_confirmation, :password   
  has_secure_password

  after_destroy :ensure_an_admin_remains

  validates :name, presence: true, uniqueness: true
  
  private
  def ensure_an_admin_remains
	if User.count.zero?
	  raise "Can't delete last user"
	end
  end
end
