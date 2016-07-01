class MessageMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def message_created(recipient, project)
		@recipient = recipient
		@project = project
    mail(
      to: recipient.email,
      subject: "There is a new Message in your project",
			body: "Your project: '#{@project.title }' has received a new Message. "
    )

	end


end
