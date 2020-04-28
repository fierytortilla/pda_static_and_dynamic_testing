require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("card_game.rb")
require_relative("card.rb")

class TestCardGame < Minitest::Test

  def setup()
    @card_game= CardGame.new()
    @card1= Card.new("Clubs", 1)
    @card2= Card.new("Hearts", 5)
    @card3= Card.new("Diamonds", 9)
    @cards= [@card2, @card3]
  end

  def test_check_for_ace()
    result1= @card_game.check_for_ace(@card1)
    assert_equal(true, result1)
    result2= @card_game.check_for_ace(@card3)
    assert_equal(false, result2)
  end

  def test_for_highest_card()
    highestCard= @card_game.highest_card(@card2, @card3)
    assert_equal(@card3, highestCard)
  end

  def test_for_cards_total()
    totalOfCards= CardGame.cards_total(@cards)
    assert_equal("You have a total of 14", totalOfCards)
  end

end
