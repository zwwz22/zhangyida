class User < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :name
  validates_presence_of :password
  validates_length_of :password, :minimum => 6
  validates_confirmation_of :password
  attr_accessible :name, :password, :password_confirmation

  def self.find_user(name,password)
    passwd = Digest::SHA1.hexdigest(password)
    user = User.where(:name => name,:password => passwd)
    if user.present?
      @current_user = user.first
    else
      nil
    end
  end
end
