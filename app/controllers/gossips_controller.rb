class GossipsController < ApplicationController
  def new
    
  end

  def create
  
   @gossip = Gossip.new('title' => params[:title], 'content' => params[:content], user_id: 11 )

  if @gossip.save
    redirect_to index_path
  else
    puts "something goes wrong"
    puts @gossip.errors.messages
    render 'new'
  end
  end
end

