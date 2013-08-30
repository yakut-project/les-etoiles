class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile, dependent: :destroy
  has_many :comments
  accepts_nested_attributes_for :profile, :allow_destroy => true
  accepts_nested_attributes_for :comments, :allow_destroy => true

end
