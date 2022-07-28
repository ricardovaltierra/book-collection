require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "name must be present" do
    book = Book.new

    assert_equal false, book.valid?
    assert_equal true, book.errors.added?(:name, :blank)
  end

  test "author must be present" do
    book = Book.new

    assert_equal false, book.valid?
    assert_equal true, book.errors.added?(:author, :blank)
  end
end
