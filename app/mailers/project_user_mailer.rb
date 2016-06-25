class ProjectUserMailer < ActionMailer::Base
	default from: "notifications@vodd.in"

	def project_user_created(project_user)
		@project_user = project_user
		mail(to: "vodd.engg@gmail.com",
			subject: "User added to project",
		)
	end


end
