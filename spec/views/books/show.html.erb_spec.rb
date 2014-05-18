require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :author => "Author",
      :title => "Title",
      :isbn => "Isbn",
      :price => 1
    ))
  end

  it "displays back link" do
    assign(:book, stub_model(Book, title: "Pan Tadeusz"))
    render
    rendered.should have_link('Back', href: books_path)
  end

  it "displays author" do
    assign(:book, stub_model(Book, author: "Adam Mickiewicz"))
    render
    expect(rendered).to include("Author:")
    expect(rendered).to include("Adam Mickiewicz")
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/1/)
  end

  it "displays price" do
    assign(:book, stub_model(Book, price: "50"))
    render
    expect(rendered).to include("Price:")
    expect(rendered).to include("50")
  end

  it "displays isbn" do
    assign(:book, stub_model(Book, isbn: "553-4343-112-33"))
    render
    expect(rendered).to include("Isbn:")
    expect(rendered).to include("553-4343-112-33")
  end

  it "displays title" do
    assign(:book, stub_model(Book, author: "Ogniem i Mieczem"))
    render
    expect(rendered).to include("Author:")
    expect(rendered).to include("Ogniem i Mieczem")
  end

  it "displays author and title" do
    assign(:book, stub_model(Book, author: "Adam Mickiewicz", title: "Pan Tadeusz"))
    render
    expect(rendered).to include("Author:")
    expect(rendered).to include("Adam Mickiewicz")
    expect(rendered).to include("Title:")
    expect(rendered).to include("Pan Tadeusz")
  end

  it "displays all data" do
    assign(:book, stub_model(Book, author: "Adam Mickiewicz", title: "Pan Tadeusz", isbn: "552-2212-22", price: "50"))
    render
    expect(rendered).to include("Author:")
    expect(rendered).to include("Adam Mickiewicz")
    expect(rendered).to include("Title:")
    expect(rendered).to include("Pan Tadeusz")
    expect(rendered).to include("Isbn:")
    expect(rendered).to include("552-2212-22")
    expect(rendered).to include("Price:")
    expect(rendered).to include("50")
  end

end
