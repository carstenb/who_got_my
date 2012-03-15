require 'test_helper'
class ItemTest < ActiveSupport::TestCase

  test 'are entries saved' do
    item = items(:valid_item)
    assert item.valid?
  end

  test 'are invalid entries not saved' do
    item = items(:invalid_item)
    assert item.invalid?
  end
  
  test 'is rating in correct range' do
    item = items(:valid_item)
    item.rating = 10
    refute item.save
  end
  
  test 'highest rating' do
    item = items(:rating_1)
    item = items(:rating_2)
    list = Item.highest_rating
    assert (list.first.rating >= list.last.rating)
  end

end
