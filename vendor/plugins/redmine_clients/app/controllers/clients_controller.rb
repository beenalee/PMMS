class ClientsController < ApplicationController
  unloadable


  def index
    @clients = Client.find(:all)
  end
  
  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to (:action => 'index')
    else
      render('new')
    end
  end
  
end
