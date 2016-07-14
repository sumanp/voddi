class SubmissionMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def submission_created(recipient, project, activity)
		@recipient = recipient
		@project = project
		@activity = activity
    mail(
      to: recipient.email,
      subject: "There is a new Submission in your project",
			body: "New submission is available for '#{@project.title}, #{@activity.title} ', is uploaded for your further action. "
    )
	end


end
