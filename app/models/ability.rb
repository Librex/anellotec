class Ability
  include CanCan::Ability

  def initialize(instructor)
    if instructor && instructor.admin?
      can :access, :rails_admin   # grant access to rails_admin
      can :manage, :all           # allow superadmins to do anything
    end
  end
end
