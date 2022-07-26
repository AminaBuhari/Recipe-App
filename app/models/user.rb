class User < ActiveRecord::Base
  has_many :foofs
  has_many :recipe

end