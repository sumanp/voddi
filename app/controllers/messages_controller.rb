class MessagesController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @message = @project.messages.create(params[:message].permit(:name, :body, {attachments: []}))
    @message.name = current_user.name
    @message.save
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @message = @project.messages.find(params[:id])
    @message.destroy

    redirect_to project_path(@project)
  end
end
