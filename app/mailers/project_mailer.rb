class ProjectMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def project_created(project)
		@project = project
		mail(to: "vodd.engg@gmail.com",
			subject: "Project Created",
			body: "A new project: #{@project.title} has been submitted"
		)
	end

	def project_updated(project)
		@project = project
		@recipients = @project.users
			mail(to: "vodd.engg@gmail.com",
					bcc: recipients.map(&:email).uniq,
					subject: "Project Updated",

					)

	end


end
