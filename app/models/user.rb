class User < ActiveRecord::Base

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


  validates :password,
            :presence => true,
            :length => {:within => 6..40}

  # attr_accessible :title, :body
  has_many :comments

  make_flagger
  letsrate_rater
    rolify
end