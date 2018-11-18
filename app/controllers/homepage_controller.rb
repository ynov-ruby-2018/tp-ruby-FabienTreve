class HomepageController < ApplicationController

  def index
    #raise current_user.inspect
    # Conseil: évitez le code commenté
    
    @comments = Comment.all.order('created_at DESC')
  end

  def create
    #raise params[:comment].inspect
    Comment.create!(
      content: params[:comment]
    )
    # Et si la validation ne passe pas ?!
    
    redirect_to homepage_index_path
  end
  
  # Il manque des features !

end
