### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  #the card class needs to be imported here order for the functions below to utilize cards as parameters

  #this function name should be in camel case, or maybe with the words separated by underscores, like the other function names in this script
  def checkforAce(card)
    #this if statement needs two equation marks ("==") in order to work properly
    if card.value = 1
      return true
    else
      return false
    end
  end

  #dif should be changed to def so that the function can work
  #card1 and card2 must be separated by a comma
  dif highest_card(card1 card2)
    if card1.value > card2.value
      #this should say "return card1"
      return card
    else
      return card2
    end
    #remove one of the end statements
  end
end

#this function must be moved above to be included in the CardGame class by putting an extra end statement at the end so it can be a Class method.
def self.cards_total(cards)
  #total must be assigned to a value
  total
  for card in cards
    #the value of card could be set to a non-number value, such as Prince, Queen, or King. How are these values added to the total, since they are strings, and not integers?
    total += card.value
    #the following statement should be placed outside of the for loop, or else only the value of the first card will be returned, and the rest of values will not be iterated over.
    #furthermore, the string being returned will not work, since it is trying to implicitly convert the integer total into a string.
    return "You have a total of" + total
  end
end
```
