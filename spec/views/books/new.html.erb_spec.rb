require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :author => "MyString",
      :title => "MyString",
      :isbn => "MyString",
      :price => 1
    ).as_new_record)
  end


     it "displays author" do
    render
    rendered.should have_field("book_author")
  end

  it "displays title" do
    render
    rendered.should have_field("book_title")
  end

    it "displays price" do
    render
    rendered.should have_field("book_price")
  end

  it "displays isbn" do
    render
    rendered.should have_field("book_isbn")
  end

    it "displays cover" do
    render
    rendered.should have_field("book_cover")
  end

  it "displays remote_cover_url" do
    render
    rendered.should have_field("book_remote_cover_url")
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", books_path, "post" do
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "input#book_isbn[name=?]", "book[isbn]"
      assert_select "input#book_price[name=?]", "book[price]"
    end
  end
end
