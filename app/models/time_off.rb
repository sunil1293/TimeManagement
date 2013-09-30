class TimeOff < ActiveRecord::Base

	belongs_to :user

	LEAVE_TYPES = ['Casual Leave', 'Sick Leave', 'Paternity Leave', 'Comp Off']

	TYPES = ['Hours', 'Day', 'Days', 'Months']

end
