class User < ActiveRecord::Base
  make_flagger
  letsrate_rater

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name


  validates :user_name,
            :presence => true,
            :length => { :in => 2..20 },
            :uniqueness => true
  validates :email,
            :presence => true,
            :uniqueness => true

  # attr_accessible :title, :body
  has_many :comments
end