class Ability
  include CanCan::Ability

  def initialize(user)
    # ログインしていない場合は空ユーザーを用意し、判定する
    user ||= User.new
    # default permission
    cannot :manage, :all
    can [:index, :show], :all

    if user.member?
        can [:index, :show], :all
        can [:myquestions], Post, user_id: user.id
        can [:myanswers], Post, target_id: user.id
        can [:update, :destroy], User, id: user.id

    elsif user.questioner?
        can [:index, :show], :all
        can [:comment], Post
        can [:create], Post
        can [:myquestions], Post, user_id: user.id
        can [:myanswers], Post, target_id: user.id
        can [:update, :destroy], User, id: user.id
        can [:update, :destroy], Post, user_id: user.id

    elsif user.specialist?
        can [:index, :show], :all
        can [:comment], Post
        can [:create], Comment
        can [:myquestions], Post, user_id: user.id
        can [:myanswers], Post, target_id: user.id
        can [:update, :destroy], User, id: user.id
        can [:update, :destroy], [Post, Comment], user_id: user.id

    elsif user.bothqs?
        can [:index, :show], :all
        can [:comment], Post
        can [:create], [Post, Comment]
        can [:myquestions], Post, user_id: user.id
        can [:myanswers], Post, target_id: user.id
        can [:update, :destroy], User, id: user.id
        can [:update, :destroy], [Post, Comment], user_id: user.id

    # only admin can manage administer page "/admin"
    elsif user.admin?
        can :manage, :all
    end
  end
end