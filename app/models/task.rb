class Task < ActiveRecord::Base
	belongs_to :user
	
	belongs_to :project

	STATUS = ['New', 'Estimated', 'In Progress', 'Need Additional Requirements', 'Ready For Development Testing', 'Ready For QA Testing', 'Ready For Deployment', 'Deploy To Production', 'In Hold']
	
	validates_presence_of :task, :user_id
	
	validates :task, :length => { :minimum => 5}


	scope :tasks_ends_in_this_week, lambda { |user| where( :expected_end_date => Date.today..Date.today + 7, :assigned_to => user.id )}

	scope :tasks_for_current_user, lambda { |user| where(assigned_to: user.id) }

end
