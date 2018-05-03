# Card shuffling techniques
# Created by Christof Becu on 26/12/17 14:32
# Last modified on 28/12/17 15:46

def initialize_deck
  values = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "Hearts", "Spades", "Clubs", "Diamonds" ]
  deck = suits.product(values)
  (0..deck.size-1).each {|x| deck[x] = deck[x].join(' ')}
  return deck
end

def show(deck)
  (0..12).each {|x| 
    print "| #{deck[x].center(12)} | #{deck[x+13].center(12)} | #{deck[x+26].center(12)} | #{deck[x+39].center(12)} |\n"
    }
  end

def in_riffle_shuffle(deck)
  #or dovetail shuffle or leafing the cards. a recommendation that card decks be riffled seven times in order to randomize them thoroughly.
  first_pile = deck.slice(0, 26)
  second_pile = deck.slice(26, 51)
  deck.clear
  while first_pile.size > 0 || second_pile.size > 0
    choose_pile = rand(2)
    case choose_pile
    when 0
      if first_pile.size > 0 
        deck << first_pile.shift
      end
    when 1
      if second_pile.size > 0 
        deck << second_pile.shift
      end
    end
  end
  return deck
end

def perfect_riffle_shuffle(deck, in_out=true)
  #There are two types of perfect riffle shuffles: if the top card moves to be second from the top then it is an in shuffle, 
  #otherwise it is known as an out shuffle (which preserves both the top and bottom cards).
  first_half = deck.slice(0, 26)
  second_half = deck.slice(26, 51)
  deck.clear
  (0..25).each {|x| 
    if in_out == true
      deck << second_half[x]
      deck << first_half[x]
    else
      deck << first_half[x]
      deck << second_half[x]
    end
  }
  return deck
end

def corgi_shuffle(deck)
  #simply spreading the cards out face down, and sliding them around and over each other this needs work because shuffle is not the way
  deck.shuffle
end

def pile_shuffle(deck)
  #Cards are simply dealt out into a number of piles, then the piles are stacked on top of each other
  pile_1, pile_2, pile_3, pile_4, pile_5, pile_6, pile_7, pile_8 = [], [], [], [], [], [], [], [] 
  while deck.size > 0
    pile_1 << deck.shift
      if deck.size == 0 then break end
    pile_2 << deck.shift
      if deck.size == 0 then break end
    pile_3 << deck.shift
      if deck.size == 0 then break end
    pile_4 << deck.shift
      if deck.size == 0 then break end
    pile_5 << deck.shift
      if deck.size == 0 then break end
    pile_6 << deck.shift
      if deck.size == 0 then break end
    pile_7 << deck.shift
      if deck.size == 0 then break end
    pile_8 << deck.shift
      if deck.size == 0 then break end
  end
  deck = pile_8 + pile_7 + pile_6 + pile_5 + pile_4 + pile_3 + pile_2 + pile_1 
  return deck
end

def mongean_shuffle(deck) 
  #take the top card from the left hand and transfer it to the right, putting the second card at the top of the new deck, the third 
  #at the bottom, the fourth at the top, the fifth at the bottom, etc. Twelve perfect Mongean shuffles restore a 52-card deck
  temp = Array.new
  (0..51).each {|x|
    x % 2 != 0 ? temp.unshift(deck[x]) : temp.push(deck[x])
  }
  return temp
end

def mexican_spiral_shuffle(deck)
  #cyclic actions of moving the top card onto the table, then the new top card under the deck, 
  #the next onto the table, next under the deck, and so on
  table = Array.new
  while deck.size > 0
    table.push(deck.shift)
    deck.push(deck.shift)
    deck.compact!
    table.compact!
  end
  return table
end

def another_shuffle(deck)
    #places each card in random order at the bottom of the deck
  51.downto(0) {|x|
    i = rand(0..x)
    deck.push(deck.delete_at(i))
  }   
  return deck
end

deck = initialize_deck
puts "\ninitial deck\n\n"
show(deck)

puts "\nin riffle shuffle\n\n"
show(in_riffle_shuffle(deck))

deck = initialize_deck
puts "\nperfect in riffle shuffle\n\n"
show(perfect_riffle_shuffle(deck, true))

deck = initialize_deck
puts "\nperfect out riffle shuffle\n\n"
show(perfect_riffle_shuffle(deck, false))

deck = initialize_deck
puts "\ncorgi shuffle\n\n"
show(corgi_shuffle(deck))

deck = initialize_deck
puts "\npile shuffle\n\n"
show(pile_shuffle(deck))

deck = initialize_deck
puts "\nmongean shuffle\n\n"
show(mongean_shuffle(deck))

deck = initialize_deck
puts "\nmexican spiral shuffle\n\n"
show(mexican_spiral_shuffle(deck))

deck = initialize_deck
puts "\nanother shuffle\n\n"
show(another_shuffle(deck))

