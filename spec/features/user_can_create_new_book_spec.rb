require 'rails_helper'

describe 'user can create a new book' do
  it 'when visiting /books/new' do

    visit '/books/new'

    book_title = "Harry Potter"
    book_author = "Rowling"
    book_pages = 334
    book_url = "https://images.pottermore.com/bxd3o8b291gf/3SQ3X2km8wkQIsQWa02yOY/25f258f21bdbe5f552a4419bb775f4f0/HarryPotter_WB_F4_HarryPotterMidshot_Promo_080615_Port.jpg?w=1200"
    fill_in 'book[title]', with: book_title
    fill_in 'book[authors]', with: book_author
    fill_in 'book[pages]', with: book_pages
    fill_in 'book[image_url]', with: book_url
    click_on 'Create Book'

    expect(page).to have_content(book_title)
    expect(page).to have_content(book_author)
    expect(page).to have_content(book_pages)
    expect(page).to have_content(book_url)
    expect(current_path).to eq("/books/#{Book.last.id}")


  end
end
