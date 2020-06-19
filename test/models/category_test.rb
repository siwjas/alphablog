require 'test_helper'
class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "sports")
  end

  test "category shold be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = nil
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "sports")
    assert_not @category2.valid?
  end

  test "name should not be tuu long" do
    @category.name = "w" * 26
    assert_not @category.valid?
  end

  test "name should not be too short" do
    @category.name = "ww"
    assert_not @category.valid?
  end
  
end