# encoding: utf-8
class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
        @comment = @article.comments.build(params[:comment])
        if @comment.save
	        redirect_to article_path(@article)
	        flash[:success] = "评论成功!"
	    else
	    	redirect_to article_path(@article)
	    end
	end
end
