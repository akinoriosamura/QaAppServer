module V1
  class CommentsController < ApplicationController
    before_action :authenticate_user!
    authorize_resource
    before_action :set_comment, only: [:show, :destroy, :update]

    def show
      @comment[:pv] += 1
      if @comment.save
        render json: @comment, adapter: :json, status: 200
      else
        render json: { error: @comment.errors }, status: 422
      end
    end

    def create
      comment = Comment.new(comment_params)
      if comment.save
        render json: comment, adapter: :json, status: 201
      else
        render json: { error: comment.errors }, status: 422
      end
    end

    def update
      if @comment.update(comment_params)
        render json: @comment, adapter: :json, status: 200
      else
        render json: { error: @comment.errors }, status: 422
      end
    end

    def destroy
      @comment.destroy
      head 204
    end

    private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    # get content, user_id adn post_id from front.
    def comment_params
      params.require(:comment).permit(:content, :user_id, :post_id, :pv)
    end
  end
end
