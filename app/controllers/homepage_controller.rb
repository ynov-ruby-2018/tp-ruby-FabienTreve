class HomepageController < ApplicationController

  def index
    #raise current_user.inspect
    @comments = Comment.all.order('created_at DESC')
  end

  def create
    #raise params[:comment].inspect
    Comment.create!(
      content: params[:comment]
    )

    redirect_to homepage_index_path
  end

end
