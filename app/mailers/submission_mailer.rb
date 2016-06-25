class SubmissionMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def submission_created(submission)
		@submission = submission
		mail(to: "vodd.engg@gmail.com",
			subject: "Report submitted",
		)
	end


end
