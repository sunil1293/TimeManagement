class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :profile_photo, :styles => { :small => "150x100" }, :default_url => "/images/default.jpg"

  validates_attachment_size :profile_photo, :less_than => 1.megabytes

  validates_attachment_content_type :profile_photo, :content_type => ['image/jpeg' , 'image/png']

  validates_presence_of :first_name, :reported_to

  ROLES = ['Admin', 'Manager', 'TechLead', 'Developer', 'Trainee']

  has_many :tasks
  has_many :descriptions
  has_many :projects
end
