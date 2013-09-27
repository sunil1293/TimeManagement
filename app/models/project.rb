class Project < ActiveRecord::Base
	has_many :users

	has_many :tasks
	
	validates :project_name, :presence => "true", :length => {:minimum => 5}

	scope :user_project, lambda { |user| where( :id => user.under_project) }

	scope :projects_ends_in_this, find(:all, :conditions => { :end_date => Date.today..Date.today + 7 })

	scope :projects_ends_in_this_week, lambda{ |user| where( :end_date => Date.today..Date.today + 7, :id => :'user.under_project' ) }

	STATUS = ['Active', 'Inactive']
end
