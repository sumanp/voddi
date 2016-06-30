class SubmissionMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def submission_created(recipient)
		@recipient = recipient
    mail(
      to: recipient.email,
      subject: "There is a new Submission in your project"
    )
	end


end
