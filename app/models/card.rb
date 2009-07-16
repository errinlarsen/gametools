class Card
	attr_reader :id, :name, :num, :text, :type
	@@cards = nil
	
	def self.all
		## ALLCARDS is defined in db/cards.yml and loaded in the load_cards.rb initializer
		@@cards ||= ALLCARDS.map { |card| new( card ) }
	end
	
	def self.find( param )
		all.detect { |card| card.to_param == param }
	end
	
	def self.find_by_id( id )
		all.detect { |card| card.id == id }
	end
	
	def initialize( card )
		@id = card[0]
		@name = card[3]
		@num = card[2]
		@text = card[4]
		@type = card[1]
	end
	
	def to_param
		"#{id}-#{name.gsub(/[^a-z1-9]+/i, '-')}"
	end
	
end
