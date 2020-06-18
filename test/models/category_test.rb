require 'test_helper'
class CategoryTest < ActiveSupport::TestCase

  test "category shold be valid" do
    @category = Category.new(name: "sports")
    assert @category.valid?
  end
  
end