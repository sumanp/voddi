class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all

    elsif user.pm? or user.user?

      can :update, Project do |project|
        project.users.include?(user)
      end
      can :destroy, Project do |project|
        project.users.include?(user)
      end
      can :show, Project do |project|
        project.users.include?(user)
      end

      can :update, Message do |message|
        message.project.users.include?(user)
      end
      can :destroy, Message do |message|
        message.project.users.include?(user)
      end

      can :update, Submission do |submission|
        submission.user == user
      end
      can :destroy, Submission do |submission|
        submission.user == user
      end

      can :show, Activity do |activity|
        activity.project.users.include?(user)
      end

      can :create, Project
      can :create, Message
      can :create, Submission
      cannot :manage, ProjectUser

    end
  end
end
