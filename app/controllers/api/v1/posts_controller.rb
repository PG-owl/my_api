module Api
  module V1
    class PostsController < ApplicationController
  
      def index
        @posts = Post.all
        render json: @posts
      end

      def create
        @post = Post.create(task: params[:task])
        rebder json: @post
      end

      def destroy
        @post = Post.find(params[:id])
        if @post.destroy
          head :no_content
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      def update
        @post = Post.find(params[:id])
        @post.update(task: params[:task])
        render json: @post
      end
      
    end
  end
end
