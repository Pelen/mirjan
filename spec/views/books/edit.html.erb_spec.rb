require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :author => "MyString",
      :title => "MyString",
      :isbn => "MyString",
      :price => 1
    ))
  end


    it "display confirm button" do
    render
    expect(rendered).to have_selector('input[type=submit]')
  end

    it "display back link" do
    render
    expect(rendered).to have_link('Back', href: books_path)
  end

    it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 2)
  end


  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "input#book_isbn[name=?]", "book[isbn]"
      assert_select "input#book_price[name=?]", "book[price]"
    end
  end
end
