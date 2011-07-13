class Invitation < ActiveRecord::Base
  belongs_to :sender, :class_name => 'User'
  has_one :receipient, :class_name => 'User'
end
