class User < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, with: /\w+@\w+/

  def to_s
    email
  end
end
