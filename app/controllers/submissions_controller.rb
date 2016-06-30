class SubmissionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @activity = Activity.find(params[:activity_id])
		@submission = @activity.submissions.build(submission_params)
		@submission.name = current_user.name


		if @submission.save
      project = @activity.project
      @recipients = project.users
      @recipients.each do |recipient|
        SubmissionMailer.submission_created(recipient).deliver
      end
			redirect_to @activity, notice: "Report submitted."
		else
			redirect_to @activity, notice: "Report no submitted."
		end
  end

  def destroy
  	@activity = Activity.find(params[:activity_id])
  	@submission =  Submission.find(params[:id])
  	@submission.destroy

  	if @submission.destroy
			redirect_to @activity, notice: "Submission Deleted"
  	else
  		redirect_to @activity, notice: "Submission could not be deleted"
		end

  end

  private

	def submission_params
		params.require(:submission).permit(:body, {attachments: []})
	end

end
