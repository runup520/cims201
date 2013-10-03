#encoding: utf-8
class CriticsController < ApplicationController
	def create
		@user = User.find(current_user)		
		@article  = Article.find(params[:article_id])
		@critic=Critic.create(:user_id => current_user.id,:content => params[:critic][:content],:article_id => @article.id)
		if @critic.save
			flash[:success] = "评论成功!"
			redirect_to article_path(@article)
		else
			flash[:success] = "评论失败，评论内容不能为空!"
			redirect_to article_path(@article)
	    end
	end
	
	def destroy
		@article  = Article.find(params[:article_id])
		@critic = @article.critics.find(params[:id])
		@critic.destroy
		redirect_to article_path(@article)
	end
end


