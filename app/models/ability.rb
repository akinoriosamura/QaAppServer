class Ability
  include CanCan::Ability

  def initialize(user)
    # ログインしていない場合は空ユーザーを用意し、判定する
    user ||= User.new
    # default permission
    cannot :manage, :all

    # administer
    if user.admin?
        can :manage, :all
    elsif user.member?
        can [:index, :show], :all
        can [:update, :destroy], User, id: user.id

    elsif user.questioner?
        can [:create, :index, :show], :all
        can [:update, :destroy], User, id: user.id
        can [:update, :destroy], Post, user_id: user.id

    elsif user.professional?
        can [:create, :index, :show], :all
        can [:update, :destroy], User, id: user.id
        can [:update, :destroy], [Post, Comment], user_id: user.id

    end
  end
end