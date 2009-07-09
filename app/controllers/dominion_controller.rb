class DominionController < ApplicationController
  def index
  	@cards = []
  	@deck = DominionCard.all
  	(1..10).each { @cards << @deck.delete_at( rand( @deck.length )) }
  	@cards = @cards.sort { |a,b| a.dname <=> b.dname }
  end

  def show
  	@card = DominionCard.find( params[:id] )
  end

end
