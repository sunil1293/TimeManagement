class Project < ActiveRecord::Base
	has_many :users

	has_many :tasks
	
	validates :project_name, :presence => "true", :length => {:minimum => 5}

	STATUS = ['Active', 'Inactive']
end
