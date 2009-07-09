class DominionCard
	attr_reader :cost, :dname, :text, :zname
	
	def self.all
		@@cards.map { |card| new( card ) }
	end
	
	def self.find( param )
		all.detect { |card| card.to_param == param } || raise( ActiveRecord::RecordNotFound )
	end
	
	def initialize( card )
		@cost = card[0]
		@dname = card[1]
		@zname = card[2]
		@text = card[3]
	end
	
	def to_param
		@dname.downcase.gsub( /[^a-z0-9]+/i, '-' )
	end
	
	@@cards = [
		[ 6, 'Adventurer', '1 in the Chamber', 'Reveal cards from your deck until you reveal 2 Treasure cards.  Put those Treasure cards into your hand and discard the other revealed cards.' ],
		[ 3, 'Workshop', 'Ammo Box', 'Gain a card costing up to (4)' ],
		[ 2, 'Moat', 'Barricade', "+2 Cards\nWhen another player plays an Attack card, you may reveal this from your hand.  If you do, you are unaffected by that Attack." ],
		[ 5, 'Laboratory', 'Courage', "+2 Cards\n+1 Action" ],
		[ 4, 'Smithy', 'Cunning', '+3 Cards' ],
		[ 2, 'Cellar', 'Decoy', "+1 Action\nDiscard any number of cards.  +1 Card per card discarded" ],
		[ 5, 'Library', 'Hide', 'Draw until you have 7 cards in hand.  You may set aside any Action cards drawn this way, as you draw them; discard the set aside cards after you finish drawing.' ],
		[ 4, 'Militia', 'Higher Ground', "+(2)\nEach other player discards down to 3 cards in his hand" ],
		[ 4, 'Moneylender', 'Hollow Points', 'Trash a Copper card from your hand.  If you do, +(3).' ],
		[ 3, 'Village', 'Maverick', "+1 Card\n+2 Actions" ],
		[ 5, 'Council Room', 'Molotov Cocktail', "+4 Cards\n+1 Buy\nEach other player draws a card" ],
		[ 4, 'Bureaucrat', 'Quick Escape', 'Gain a Silver card; put it on top of your deck.  Each other player reveals a Victory card from his hand and puts it on his deck (or reveals a hand with no Victory cards).' ],
		[ 4, 'Spy', 'Recon', "+1 Card\n+1 Action\nEach player (including you) reveals the top card of his deck and either discards it or puts it back, your choice." ],
		[ 3, 'Chancellor', 'Regroup', "+(2)\nYou may immediately put your deck into your discard pile." ],
		[ 5, 'Mine', 'Reload', 'Trash a Treasure card from your hand.  Gain a Treasure card costing up to (3) more; put it into your hand.' ],
		[ 4, 'Remodel', 'Restock', 'Trash a card from your hand.  Gain a card costing up to (2) more than the trashed card.' ],
		[ 2, 'Chapel', 'Sacrifice', 'Trash up to 4 cards from your hand.' ],
		[ 4, 'Thief', 'Scavenger', 'Each other player reveals the top 2 cards of his deck.  If they revealed any Treasure cards, they trash one of them that you choose.  You may gain any or all of these trashed cards.  They discard the other revealed cards.' ],
		[ 3, 'Woodcutter', 'Shotgun', "+1 Buy\n+(2)" ],
		[ 5, 'Market', 'Sidekick', "+1 Card\n+1 Action\n+1 Buy\n+(1)" ],
		[ 5, 'Festival', 'Stick Together', "+2 Actions\n+1 Buy\n+(2)" ],
		[ 4, 'Gardens', 'Survivors', 'Worth 1 Victory for every 10 cards in your deck (rounded down).' ],
		[ 4, 'Throne Room', 'Tactics', 'Choose an Action card in your hand.  Play it twice' ],
		[ 4, 'Feast', 'Weapon\'s Cache', 'Trash this card.  Gain a card costing up to (5).' ],
		[ 5, 'Witch', 'Zombie Swarm', "+2 Cards\nEach other player gains a Curse card." ],
	]
	
end
