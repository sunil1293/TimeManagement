class TimeOff < ActiveRecord::Base

	belongs_to :user

	self.inheritance_column = nil

	LEAVE_TYPES = ['Casual Leave', 'Sick Leave', 'Paternity Leave', 'Comp Off']

	TYPES = ['Hours', 'Day', 'Days', 'Months']

	STATUS = ['New', 'Approved', 'Rejected']

end
