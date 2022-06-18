require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  test "visiting the book index" do
    first_book = Book.create! name: "My first book", author: "J. Romero"
    second_book = Book.create! name: "My second book", author: "J. Carmack"

    visit books_url

    assert_selector "h1", text: "Books"
    assert_selector "th", text: "Name"
    assert_selector "th", text: "Author"

    assert_selector "td", text: "My first book"
    assert_selector "td", text: "My second book"
    assert_selector "td", text: "J. Romero"
    assert_selector "td", text: "J. Carmack"
  end

  test "adding a new book" do
    visit books_url

    click_on "Add book"

    assert_selector "h2", text: "New book"
    fill_in "book[name]", with: "POODR"
    fill_in "book[author]", with: "Sandy Metz"
    click_on "save"

    assert_text "Saved!"

    assert_selector "h1", text: "Books"
    assert_selector "td", text: "POODR"
    assert_selector "td", text: "Sandy Metz"
  end

  test "edit a book" do
    book = Book.create! name: "Domian Drivn Design", author: "Edrik Evans"

    visit books_url
    click_on "edit_book_#{book.id}"

    fill_in "book[name]", with: "Domain Driven Design"
    fill_in "book[author]", with: "Erik Evans"
    click_on "save"

    assert_text "Updated!"

    assert_selector "h1", text: "Books"
    assert_selector "td", text: "Domain Driven Design"
    assert_selector "td", text: "Erik Evans"
  end

  test "delete a book" do
    book = Book.create! name: "Hardcore Java", author: "Robert Simmons Jr."

    visit books_url

    click_on "delete_book_#{book.id}"

    accept_alert "Are you sure?"

    assert_text "Book deleted!"

    assert_no_text "Hardcore Java"
    assert_no_text "Robert Simmons Jr."
  end
end
