class SubmissionMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def submission_created(recipient, project)
		@recipient = recipient
		@project = project
    mail(
      to: recipient.email,
      subject: "There is a new Submission in your project",
			body: "Your project: '#{@project.title}' has received a new Submission. "
    )
	end


end
