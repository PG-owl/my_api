module Api
  module V1
    class PostsController < ApplicationController
  
      def index
        @posts = Post.all
        render json: @posts
      end

      def create
        @posts = Post.create(task: params[:task])
        rebder json: @posts
      end

      def destroy
        @posts = Post.find(params[:id])
        if @posts.destroy
          head :no_content, status: :ok
        else
          render json: @posts.errors, status: :unprocessable_entity
        end
      end

      def update
        @posts = Post.find(params[:id])
        @posts.update_attributes(task: params[:task])
        render json: @posts
      end

    end
  end
end
