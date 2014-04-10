class EarlyUser < ActiveRecord::Base
  validates :email, :presence => true, :uniqueness => true, 
    :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ }
end
