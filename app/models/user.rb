class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendships
  has_many :friends, through: :friendships, class_name: 'User'
  has_many :sent_requests, class_name: 'Request', foreign_key: :requester_id
  has_many :requested, through: :sent_requests
  has_many :received_requests, class_name: 'Request', foreign_key: :requested_id

end
