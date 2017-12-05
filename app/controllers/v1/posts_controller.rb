module V1
  class PostsController < ApplicationController
    # before_action :authenticate_user!
    # authorize_resource
    before_action :set_post, only: [:show, :destroy, :update]

    def index
      posts = Post.all
      render json: posts, adapter: :json
    end

    def myquestions
      myposts = Post.where(user_id: post_params[:user_id])
      render json: myposts, adapter: :json
    end

    def myanswers
      myanswers = Post.where(target_id: post_params[:user_id])
      render json: myanswers, adapter: :json
    end

    def show
      @comment = @post.comments.includes(:user).first
      render json: {post: @post, comment: @comment}, adapter: :json
    end

    def create
      post = Post.new(post_params)
      if post.save
        render json: post, adapter: :json, status: 201
      else
        render json: { error: post.errors }, status: 422
      end
    end

    def update
      if @post.update(post_params)
        render json: @post, adapter: :json, status: 200
      else
        render json: { error: @post.errors }, status: 422
      end
    end

    def destroy
      @post.destroy
      head 204
    end

    private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:content, :user_id, :target_id)
    end
  end
end