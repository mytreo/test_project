class CardsController < ApplicationController
  
  def index
    @cards = Card.all
  end
  
  def show
     @card = Card.find(params[:id])
  end
  
  def new
    @card = Card.new
  end
  
  def create
    @card = User.new(card_params)    
    if @card.save
      redirect_to @card
    else
      render 'new'
    end
  end
  
  def edit
     @card = Card.find(params[:id])
  end
  
  def update
     @card = Card.find(params[:id])
    if @card.update_attributes(card_params)
      redirect_to @card
    else
      render 'edit'
    end
  end
  
  def destroy
    Card.find(params[:id]).destroy
    redirect_to root_url
  end
  
  
    private

    def card_params
      params.require(:card).permit(:text_ru, :text_en, :review_date)
    end
  
  
end
