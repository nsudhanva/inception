class ReminderMailer < ApplicationMailer
	default :from => 'nsudhanva@gmail.com'

 	def create_reminder_email(reminder, user) 
    @reminder = reminder 
    mail( :to => user.email, 
    :subject => 'Your reminder' ) 
    # binding.pry 
  end 
end
