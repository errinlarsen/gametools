class CardsController < ApplicationController
  def index
  end
  
  def dominion
	@cards = pick_cards( 10, 'D' )
  end

  def intrigue
    @cards = pick_cards( 10, 'I' )
  end

  def dominion_plus
  	@cards = pick_cards( 10, 'DI' )
  end
   
  def zombinion
	@cards = pick_cards( 10, 'Z' )
  end

  def entrails
  	@cards = pick_cards( 10, 'E' )
  end
  
  def zombinion_plus
  	@cards = pick_cards( 10, 'ZE' )
  end
  
  def startplayer
  	card = pick_cards( 1, 'S' )
  	redirect_to gametool_path( card )
  end

  def show
	@card = Card.find( params[:id] )
	@text = @card.text.gsub( /\n/, '<br />' )
  end

private
  def pick_cards( n, type )
  	cards = []
  	deck = []
  	type.each_char do |c|
  		deck += Card.all.find_all { |card| card.type == c }
  	end
  	n.times { cards << deck.delete_at( rand( deck.length )) }
  	cards.sort { |a,b| a.name <=> b.name }
  end
end
