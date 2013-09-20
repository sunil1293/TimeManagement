class Task < ActiveRecord::Base
	belongs_to :user
	
	belongs_to :project

	STATUS = ['New', 'Estimated', 'In Progress', 'Need Additional Requirements', 'Ready For Development Testing', 'Ready For QA Testing', 'Ready For Deployment', 'Deploy To Production', 'In Hold']
	
	validates_presence_of :task, :user_id
	validates :task, :length => { :minimum => 5}

	scope :users_by_project, lambda { |under_project| where(under_project: under_project)  }

end
