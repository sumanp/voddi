class MessagesController < ApplicationController
  before_action :authenticate_user!
  def create
    @project = Project.find(params[:project_id])
    @message = @project.messages.create(params[:message].permit(:name, :body, {attachments: []}))
    @message.name = current_user.name
    @message.save
    MessageMailer.message_created(@project).deliver

    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @message = @project.messages.find(params[:id])
    @message.destroy

    redirect_to project_path(@project)
  end
end
