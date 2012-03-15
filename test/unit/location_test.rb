require 'test_helper'

class LocationTest < ActiveSupport::TestCase
 test 'location should have many items' do
   item = items(:valid_item)
   l = Location.create(:title => "Bonn")
   l.items << item
   assert_equal item, l.items.first
 end
 
end
