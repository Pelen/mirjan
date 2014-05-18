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

  it "displays form for new book" do
  @book = Book.new
  render
  expect(rendered).to have_selector("form")
  end

  it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("books")
    expect(controller.controller_path).to eq("books")
  end

  it "infers the controller path" do
    expect(controller.request.path_parameters[:action]).to eq("edit")
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

  it "displays remove_cover" do
    render
    rendered.should have_field("book_remove_cover")
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
