class MessageMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def message_created(recipient, project)
		@recipient = recipient
		@project = project
    mail(
      to: recipient.email,
      subject: "There is a new Message in your project",
			body: "New message for '#{@project.title }', has been uploaded for your kind attention.
 "
    )

	end


end
