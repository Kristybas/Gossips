class GossipsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @gossip = Gossip.new(gossip_params)
  
    if @gossip.save
      redirect_to @gossip, notice: 'Le potin a été créé avec succès.'
    else
      render :new
    end
  end
  
  private
  
  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
  end

  def edit
  end

  def update
      @gossip = Gossip.find(params[:id])
    
      if @gossip.update(gossip_params)
        redirect_to @gossip, notice: 'Le potin a été mis à jour avec succès.'
      else
        render :edit
      end
    end
    
    private
    
    def gossip_params
      params.require(:gossip).permit(:title, :content)
    end
  end

  def destroy
  end

end
