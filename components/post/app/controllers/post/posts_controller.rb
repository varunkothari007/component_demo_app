module Post
  class PostsController < ApplicationController

    before_action :get_post, only: [:show, :update, :destroy]

    def index
      post = Posts::Post.all
      render json: {data: post}, status: 200
    end

    def create
      post = Posts::Post.create(title: params[:title], body: params[:body] )
      render json: {data: post}, status: 200
    end

    def show
      render json: {data: @post}, status: 200
    end

    def update
      @post.update(body: params[:body])
      render json: {data: @post, message: "updated"}, status: 200
    end

    def destroy
      @post.destroy 
      render json: {data: @post,message: "deleted"}, status: 200
    end

    private
    def get_post
      begin
      	@post = Posts::Post.find(params[:id])
      rescue Exception => e
        render json: {message: "wrong id"}, status: 400
      end    
    end
  end
end