class DominionCard
	attr_reader :id, :cost, :dname, :text, :zname
	
	def self.all
		@@cards.map { |card| new( card ) }
	end
	
	def self.find( param )
		all.detect { |card| card.to_param == param } || raise( ActiveRecord::RecordNotFound )
	end
	
	def initialize( card )
		@id = card[0]
		@cost = card[1]
		@dname = card[2]
		@zname = card[3]
		@text = card[4]
	end
	
	def to_param
		@dname.downcase.gsub( /[^a-z0-9]+/i, '-' )
	end
	
	@@cards = [
		[ 1, 6, 'Adventurer', '1 in the Chamber', 'Reveal cards from your deck until you reveal 2 Treasure cards.  Put those Treasure cards into your hand and discard the other revealed cards.' ],
		[ 2, 3, 'Workshop', 'Ammo Box', 'Gain a card costing up to (4)' ],
		[ 3, 2, 'Moat', 'Barricade', "+2 Cards\nWhen another player plays an Attack card, you may reveal this from your hand.  If you do, you are unaffected by that Attack." ],
		[ 4, 5, 'Laboratory', 'Courage', "+2 Cards\n+1 Action" ],
		[ 5, 4, 'Smithy', 'Cunning', '+3 Cards' ],
		[ 6, 2, 'Cellar', 'Decoy', "+1 Action\nDiscard any number of cards.  +1 Card per card discarded" ],
		[ 7, 5, 'Library', 'Hide', 'Draw until you have 7 cards in hand.  You may set aside any Action cards drawn this way, as you draw them; discard the set aside cards after you finish drawing.' ],
		[ 8, 4, 'Militia', 'Higher Ground', "+(2)\nEach other player discards down to 3 cards in his hand" ],
		[ 9, 4, 'Moneylender', 'Hollow Points', 'Trash a Copper card from your hand.  If you do, +(3).' ],
		[ 10, 3, 'Village', 'Maverick', "+1 Card\n+2 Actions" ],
		[ 11, 5, 'Council Room', 'Molotov Cocktail', "+4 Cards\n+1 Buy\nEach other player draws a card" ],
		[ 12, 4, 'Bureaucrat', 'Quick Escape', 'Gain a Silver card; put it on top of your deck.  Each other player reveals a Victory card from his hand and puts it on his deck (or reveals a hand with no Victory cards).' ],
		[ 13, 4, 'Spy', 'Recon', "+1 Card\n+1 Action\nEach player (including you) reveals the top card of his deck and either discards it or puts it back, your choice." ],
		[ 14, 3, 'Chancellor', 'Regroup', "+(2)\nYou may immediately put your deck into your discard pile." ],
		[ 15, 5, 'Mine', 'Reload', 'Trash a Treasure card from your hand.  Gain a Treasure card costing up to (3) more; put it into your hand.' ],
		[ 16, 4, 'Remodel', 'Restock', 'Trash a card from your hand.  Gain a card costing up to (2) more than the trashed card.' ],
		[ 17, 2, 'Chapel', 'Sacrifice', 'Trash up to 4 cards from your hand.' ],
		[ 18, 4, 'Thief', 'Scavenger', 'Each other player reveals the top 2 cards of his deck.  If they revealed any Treasure cards, they trash one of them that you choose.  You may gain any or all of these trashed cards.  They discard the other revealed cards.' ],
		[ 19, 3, 'Woodcutter', 'Shotgun', "+1 Buy\n+(2)" ],
		[ 20, 5, 'Market', 'Sidekick', "+1 Card\n+1 Action\n+1 Buy\n+(1)" ],
		[ 21, 5, 'Festival', 'Stick Together', "+2 Actions\n+1 Buy\n+(2)" ],
		[ 22, 4, 'Gardens', 'Survivors', 'Worth 1 Victory for every 10 cards in your deck (rounded down).' ],
		[ 23, 4, 'Throne Room', 'Tactics', 'Choose an Action card in your hand.  Play it twice' ],
		[ 24, 4, 'Feast', 'Weapon\'s Cache', 'Trash this card.  Gain a card costing up to (5).' ],
		[ 25, 5, 'Witch', 'Zombie Swarm', "+2 Cards\nEach other player gains a Curse card." ],
	]
	
end
