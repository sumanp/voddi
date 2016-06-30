class MessageMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def message_created(recipient)
		@recipient = recipient
    mail(
      to: recipient.email,
      subject: "There is a new Message in your project"
    )

	end


end
