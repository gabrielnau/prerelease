class User
  include Mongoid::Document
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :email
  field :password
  field :login_count, :type => Integer, :default => 0
  field :last_login_at, :type => DateTime
  field :current_login_at, :type => DateTime
  field :last_login_ip, :type => String
  field :current_login_ip, :type => String
  field :encrypted_password, :default => "", :type => String, :null => false
  field :password_salt, :type => String
  field :authentication_token, :type => String
  field :reset_password_token, :type => String
  field :reset_password_sent_at, :type => DateTime
  field :remember_token, :type => String
  field :remember_created_at, :type => DateTime
  field :sign_in_count, :type => Integer, :default => 0
  field :current_sign_in_at, :type => DateTime
  field :last_sign_in_at, :type => DateTime
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip, :type => String
  field :failed_attempts, :type => Integer, :default => 0
  field :unlock_token, :type => String
  field :locked_at, :type => DateTime
  field :muted_at, :type => DateTime, :default => nil

  index :authentication_token
  index :reset_password_token


  attr_accessible :email, :password, :remember_me
  validates_presence_of :email, :password
  
  has_and_belongs_to_many :labels
end
