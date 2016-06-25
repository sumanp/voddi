class MessageMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def message_created(project)
		@project = project
		mail(to: "vodd.engg@gmail.com",
			subject: "message Created",
		)
	end


end
