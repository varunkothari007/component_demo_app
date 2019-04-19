module Comments
  class CommentsController < ApplicationController
  	before_action :get_comment, only: [:show, :update, :destroy]

	 	def index
	 		unless params[:post_id].nil?
	 			comments = Comment::Comment.where(post_id: params[:post_id])
	 		else
	 			comments = Comment::Comment.all
	 		end
	 		render json: {data: comments},status: 200
	 	end
		
		def create
			if params[:post_id].nil?
				render json: {message: "post_id is nil"},status: 400
			else
				comment = Comment::Comment.create(post_id: params[:post_id], body: params[:body] )
				if comment.id.nil?
					render json: {message: "Wrong post_id"},status: 200
				else
					render json: {data: comment,message: "created"},status: 200
				end
			end
		end

		def show
			render json: {data: @comment},status: 200	
		end

		def update
			@comment.update(body: params[:body])
			render json: {data: @comment,message: "updated"},status: 200
		end

		def destroy
			@comment.destroy 
			render json: {data: @comment,message: "deleted"},status: 200
		end

		private

			def get_comment
				begin
					@comment = Comment::Comment.find(params[:id])
				rescue Exception => e
					render json: {message: "wrong id"},status: 400
				end
			end
  end
end
