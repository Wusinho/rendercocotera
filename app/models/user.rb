class User < ApplicationRecord
    validates_presence_of :email, :password, :password_confirmation
    validates_uniqueness_of :email
end
