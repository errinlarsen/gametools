class ZombinionController < ApplicationController
  def index
  	@cards = []
  	@deck = DominionCard.all
  	(1..10).each { @cards << @deck.delete_at( rand( @deck.length )) }
  	@cards = @cards.sort { |a,b| a.zname <=> b.zname }
  end

  def show
  	@card = DominionCard.find( params[:id] )
  end
  
  def reload
  	redirect_to :index
  end

end
