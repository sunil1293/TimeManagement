class Task < ActiveRecord::Base
	belongs_to :user
	
	validates_presence_of :task, :expected_end_date, :user_id
	validates :task, :length => { :minimum => 5}
end
