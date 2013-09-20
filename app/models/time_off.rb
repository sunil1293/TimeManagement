class TimeOff < ActiveRecord::Base

	belongs_to :user

	self.inheritance_column = nil

	LEAVE_TYPES = ['Casual Leave', 'Sick Leave', 'Meternity Leave', 'Comp Off']

	TYPES = ['Hours', 'Day', 'Days', 'Months']

end
