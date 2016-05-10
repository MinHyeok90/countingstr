class HomeController < ApplicationController
  def index
    @every_post = Post.all.order("id desc")
  end
  
  def write
    newpost = Post.create(title: params[:title],content: params[:content])
    newpost.save
    redirect_to :back
  end
  
  def reply_write
    new_reply = Reply.create(content: params[:content],post_id: params[:post_id])
    new_reply.save
    redirect_to :back
  end
end
