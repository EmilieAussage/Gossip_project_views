class StaticPagesController < ApplicationController
def index
end

def team

end

def contact

end

def welcome
  @actual_user = params[:first_name]
end

def potin
  @gossip_page = params[:potin]
end
end