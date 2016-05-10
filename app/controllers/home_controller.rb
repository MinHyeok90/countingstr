class HomeController < ApplicationController
  def index
    @every_post = Post.all.order("id desc")
  end
  
  def write
    newpost = Post.new(title: params[:title],content: params[:content])
    if newpost.save
      redirect_to :back
    else
      render :text => newpost.errors.messages[:title].first
    end
  end
  
  def reply_write
    new_reply = Reply.new(content: params[:content],post_id: params[:post_id])
    new_reply.save
    redirect_to :back
  end
end
