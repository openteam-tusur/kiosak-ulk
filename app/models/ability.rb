class Ability
  include CanCan::Ability

  def initialize(user)

    return unless user

    can :manage, [Place, DateTemp, Order] if user.manager?

    can :manage, :all if user.admin?
  end

end
