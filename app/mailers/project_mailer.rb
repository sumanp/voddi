class ProjectMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def project_created(project)
		@project = project
		mail(to: "vodd.engg@gmail.com",
			subject: "Project Created",
			body: "New project: '#{@project.title}', is generated for your consideration.
			Kindly review and revert back. "
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
